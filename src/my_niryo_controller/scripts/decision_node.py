#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
import numpy as np
from collections import defaultdict
from std_msgs.msg import String
from my_niryo_controller.msg import PuzzlePiece, AssemblyTask

# ==================== 固定槽位坐标表 ====================
# 单位：米，相对于机械臂底座坐标系
# 获取方法：手动移动机械臂末端到各槽位正上方，记录末端坐标
# TODO: 用实际标定坐标替换以下所有值
SLOT_POSITIONS = {
    "orange_square": {
        "x": 0.20, "y":  0.05, "z": 0.02, "yaw": 0.0,
    },
    "red_circle": {
        "x": 0.20, "y": -0.10, "z": 0.02, "yaw": 0.0,
    },
    "blue_rectangle": {
        "x": 0.15, "y":  0.05, "z": 0.02, "yaw": 0.0,
    },
    "yellow_triangle": {
        "x": 0.20, "y":  0.00, "z": 0.02, "yaw": 0.0,
    },
    "green_oval": {
        "x": 0.15, "y": -0.10, "z": 0.02, "yaw": 0.0,
    },
}

# 同一拼图块需连续被检测到 N 帧才确认（防止误检）
CONFIRM_FRAMES = 5
# ========================================================

class DecisionNode:
    def __init__(self):
        rospy.init_node("decision_node", anonymous=False)

        # 已完成组装的拼图类型集合
        self.assembled = set()

        # 候选缓冲区：{piece_type: [PuzzlePiece, ...]}，存储最近几帧的检测结果
        self.candidates = defaultdict(list)

        # 当前是否有任务正在执行（防止重复下发）
        self.is_executing = False

        # 订阅感知节点发布的拼图块（每块单独一条消息）
        rospy.Subscriber(
            "/puzzle/detected_pieces",
            PuzzlePiece,
            self.piece_callback,
            queue_size=20
        )

        # 订阅执行节点的状态反馈
        rospy.Subscriber(
            "/assembly/status",
            String,
            self.status_callback,
            queue_size=5
        )

        # 发布组装任务给执行节点
        self.task_pub = rospy.Publisher(
            "/assembly/task",
            AssemblyTask,
            queue_size=1
        )

        # 每秒触发一次决策循环
        rospy.Timer(rospy.Duration(1.0), self.decision_loop)

        rospy.loginfo("Decision node started.")

    def piece_callback(self, msg):
        """
        接收感知节点的检测结果，暂存到候选缓冲区
        已组装的拼图直接忽略
        """
        if msg.piece_type in self.assembled:
            return

        # 滚动缓冲区，只保留最近 CONFIRM_FRAMES 帧
        buf = self.candidates[msg.piece_type]
        buf.append(msg)
        if len(buf) > CONFIRM_FRAMES:
            buf.pop(0)

    def status_callback(self, msg):
        """
        接收执行节点的反馈
        SUCCESS:piece_type → 标记该拼图已完成，解锁
        FAILED             → 直接解锁，等待重试
        """
        status = msg.data

        if status.startswith("SUCCESS:"):
            piece_type = status.split(":", 1)[1].strip()
            self.assembled.add(piece_type)
            self.is_executing = False
            rospy.loginfo(
                f"[{len(self.assembled)}/{len(SLOT_POSITIONS)}] "
                f"Assembly success: {piece_type}"
            )
        elif status == "FAILED":
            self.is_executing = False
            rospy.logwarn("Assembly failed, will retry on next cycle.")

    def get_confirmed_pieces(self):
        """
        从缓冲区中返回已被连续确认的拼图块列表
        多帧坐标取均值，减少抖动
        """
        confirmed = []
        for piece_type, frames in self.candidates.items():
            if piece_type in self.assembled:
                continue
            # 帧数不足，尚未稳定
            if len(frames) < CONFIRM_FRAMES:
                continue
            # 多帧坐标均值
            avg_x = np.mean([f.pose.x for f in frames])
            avg_y = np.mean([f.pose.y for f in frames])
            avg_z = np.mean([f.pose.z for f in frames])
            # 复制最后一帧，替换为均值坐标
            stable = frames[-1]
            stable.pose.x = avg_x
            stable.pose.y = avg_y
            stable.pose.z = avg_z
            confirmed.append(stable)
        return confirmed

    def find_nearest(self, pieces):
        """选择距机械臂底座（原点）XY 距离最近的拼图块"""
        return min(pieces, key=lambda p: np.sqrt(p.pose.x ** 2 + p.pose.y ** 2))

    def decision_loop(self, event):
        """
        定时决策循环（每秒触发）
        三个门全部通过才下发任务：
          1. 无任务正在执行
          2. 还有未完成的拼图
          3. 感知节点有稳定的检测结果
        """
        # 门1：有任务正在执行
        if self.is_executing:
            return

        # 门2：所有拼图已完成
        if len(self.assembled) >= len(SLOT_POSITIONS):
            rospy.loginfo("All puzzle pieces assembled! Mission complete.")
            rospy.signal_shutdown("Mission complete.")
            return

        # 门3：获取稳定检测结果
        confirmed = self.get_confirmed_pieces()
        if not confirmed:
            rospy.loginfo_throttle(5, "Waiting for stable piece detection...")
            return

        # 选择最近的拼图块
        target = self.find_nearest(confirmed)

        # 从固定槽位表查找对应放置坐标
        slot = SLOT_POSITIONS.get(target.piece_type)
        if slot is None:
            rospy.logerr(f"No slot defined for: {target.piece_type}")
            return

        # 构建并发布组装任务
        task = AssemblyTask()
        task.piece_type      = target.piece_type
        task.pick_pose.x     = target.pose.x
        task.pick_pose.y     = target.pose.y
        task.pick_pose.z     = target.pose.z
        task.pick_pose.roll  = 0.0
        task.pick_pose.pitch = 0.0
        task.pick_pose.yaw   = 0.0
        task.place_pose.x    = slot["x"]
        task.place_pose.y    = slot["y"]
        task.place_pose.z    = slot["z"]
        task.place_pose.roll  = 0.0
        task.place_pose.pitch = 0.0
        task.place_pose.yaw   = slot["yaw"]

        self.task_pub.publish(task)
        self.is_executing = True

        rospy.loginfo(
            f"Task dispatched: pick '{task.piece_type}' at "
            f"({task.pick_pose.x:.3f}, {task.pick_pose.y:.3f}) -> "
            f"place at ({task.place_pose.x:.3f}, {task.place_pose.y:.3f})"
        )

    def run(self):
        rospy.spin()


if __name__ == "__main__":
    node = DecisionNode()
    node.run()