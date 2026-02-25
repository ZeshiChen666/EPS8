#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
from std_msgs.msg import String
from my_niryo_controller.msg import AssemblyTask
from niryo_robot_python_ros_wrapper.ros_wrapper import NiryoRosWrapper

# ==================== 机械臂动作参数 ====================
# 观察位关节角（机械臂伸向桌面俯视拼图区）
# TODO: 用 Niryo Studio 找到合适的观察位后替换
JOINTS_OBSERVE    = [0.0,  0.3, -0.8, 0.0, 1.0, 0.0]

# 安全过渡位（抓取后抬高，避免运动过程碰撞底座）
# TODO: 根据实际工作空间调整
JOINTS_TRANSITION = [0.0, -0.5,  0.0, 0.0, 0.5, 0.0]

# 抓取/放置前的悬停高度（米），先悬停再下降到目标
HOVER_OFFSET = 0.08     # TODO: 根据实际调整

# 夹爪参数
GRIPPER_SPEED       = 500
GRIPPER_OPEN_TORQUE = 800   # 张开量（根据把手直径调整）
GRIPPER_HOLD_TORQUE = 400   # 抓持力

# 动作间延时（秒）
WAIT_MOVE    = 0.3
WAIT_GRASP   = 0.5
WAIT_RELEASE = 0.5
# ========================================================


class ExecutionNode:
    def __init__(self):
        rospy.init_node("execution_node", anonymous=False)

        # 初始化并自动标定机械臂
        rospy.loginfo("Connecting to Niryo robot...")
        self.robot = NiryoRosWrapper()
        self.robot.calibrate_auto()
        self.robot.update_tool()
        rospy.loginfo("Robot calibrated and ready.")

        # 发布执行状态给决策节点
        self.status_pub = rospy.Publisher(
            "/assembly/status",
            String,
            queue_size=5
        )

        # 订阅决策节点的任务（queue_size=1：丢弃积压，始终执行最新任务）
        rospy.Subscriber(
            "/assembly/task",
            AssemblyTask,
            self.task_callback,
            queue_size=1
        )

        # 启动后先移动到观察位
        self._go_observe()
        rospy.loginfo("Execution node ready at observe position.")

    # ────────────────── 基础动作 ──────────────────

    def _go_observe(self):
        """移动到桌面观察位，等待感知节点检测"""
        rospy.loginfo("Moving to observe position...")
        self.robot.move_joints(*JOINTS_OBSERVE)
        rospy.sleep(WAIT_MOVE)

    def _go_transition(self):
        """移动到安全过渡位，用于抓取后和放置前的中间状态"""
        rospy.loginfo("Moving to transition position...")
        self.robot.move_joints(*JOINTS_TRANSITION)
        rospy.sleep(WAIT_MOVE)

    def _open_gripper(self):
        """张开夹爪"""
        self.robot.open_gripper(GRIPPER_SPEED, GRIPPER_OPEN_TORQUE)
        rospy.sleep(0.3)

    def _close_gripper(self):
        """闭合夹爪抓持"""
        self.robot.close_gripper(GRIPPER_SPEED, GRIPPER_HOLD_TORQUE)
        rospy.sleep(WAIT_GRASP)

    def _move_pose(self, x, y, z, roll=0.0, pitch=1.57, yaw=0.0):
        """移动末端到指定位姿（pitch=1.57 使末端朝下）"""
        self.robot.move_pose(x, y, z, roll, pitch, yaw)
        rospy.sleep(WAIT_MOVE)

    # ────────────────── 抓取与放置 ──────────────────

    def pick(self, pose):
        """
        抓取拼图块把手
        流程：张开夹爪 → 悬停 → 下降到把手 → 夹紧 → 上升
        """
        x, y, z, yaw = pose.x, pose.y, pose.z, pose.yaw
        rospy.loginfo(f"Picking at ({x:.3f}, {y:.3f}, {z:.3f})")
        try:
            self._open_gripper()
            self._move_pose(x, y, z + HOVER_OFFSET, yaw=yaw)   # 悬停
            self._move_pose(x, y, z, yaw=yaw)                   # 下降
            self._close_gripper()                                # 夹紧
            self._move_pose(x, y, z + HOVER_OFFSET, yaw=yaw)   # 上升
            rospy.loginfo("Pick successful.")
            return True
        except Exception as e:
            rospy.logerr(f"Pick failed: {e}")
            return False

    def place(self, pose):
        """
        将拼图块放入槽位
        流程：悬停在槽位上方 → 下降对准 → 张开夹爪释放 → 上升
        """
        x, y, z, yaw = pose.x, pose.y, pose.z, pose.yaw
        rospy.loginfo(f"Placing at ({x:.3f}, {y:.3f}, {z:.3f})")
        try:
            self._move_pose(x, y, z + HOVER_OFFSET, yaw=yaw)   # 悬停
            self._move_pose(x, y, z, yaw=yaw)                   # 下降插入槽位
            self._open_gripper()                                 # 释放
            rospy.sleep(WAIT_RELEASE)
            self._move_pose(x, y, z + HOVER_OFFSET, yaw=yaw)   # 上升离开
            rospy.loginfo("Place successful.")
            return True
        except Exception as e:
            rospy.logerr(f"Place failed: {e}")
            return False

    # ────────────────── 任务回调 ──────────────────

    def task_callback(self, task):
        """
        接收并执行完整的组装任务
        流程：抓取 → 过渡位 → 放置 → 回观察位 → 发布状态
        无论成功失败，最终都返回观察位
        """
        rospy.loginfo(f"=== Task received: {task.piece_type} ===")

        success = False
        try:
            # 步骤1：抓取拼图块
            if not self.pick(task.pick_pose):
                raise RuntimeError("Pick step failed.")

            # 步骤2：移动到安全过渡位
            self._go_transition()

            # 步骤3：放置到槽位
            if not self.place(task.place_pose):
                raise RuntimeError("Place step failed.")

            success = True

        except Exception as e:
            rospy.logerr(f"Task error: {e}")

        finally:
            # 无论成功失败，必须返回观察位
            self._go_transition()
            self._go_observe()

        # 发布执行结果给决策节点
        result = String()
        if success:
            result.data = f"SUCCESS:{task.piece_type}"
            rospy.loginfo(f"Task complete: {task.piece_type}")
        else:
            result.data = "FAILED"
            rospy.logwarn(f"Task failed: {task.piece_type}")
        self.status_pub.publish(result)

    def run(self):
        rospy.spin()


if __name__ == "__main__":
    node = ExecutionNode()
    node.run()
