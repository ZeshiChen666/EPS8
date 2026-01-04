#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
import time
from niryo_robot_python_ros_wrapper.ros_wrapper import NiryoRosWrapper
from niryo_robot_utils.dataclasses.Pose import Pose
from niryo_robot_utils.dataclasses.PoseMetadata import PoseMetadata

def main():
    # 初始化 ROS 节点
    rospy.init_node("niryo_demo_test", anonymous=True)
    
    # 初始化机器人封装类
    rospy.loginfo("正在连接机器人...")
    robot = NiryoRosWrapper()
    
    # 给系统一点准备时间，防止指令发送过快导致 Goal ID 冲突 
    rospy.sleep(2.0)
    
    # 1. 回正机械臂（校准与回到初始姿态）
    rospy.loginfo("--- 第一步：回正机械臂 ---")
    try:
        # 如果是第一次运行，建议先进行校准（仿真中通常已自动完成，但回正位姿很必要）
        # 这里先回到观察位姿，确保机械臂处于安全起始状态
        robot.move_to_sleep_pose()
        rospy.loginfo("机械臂已回到休眠/初始姿态")
    except Exception as e:
        rospy.logwarn(f"初始回正失败: {e}")

    # 2. 运动参数设置
    # 设置较高的速度百分比以改善“移动慢”的问题
    speed_percentage = 80 
    robot.set_arm_max_velocity(speed_percentage)
    rospy.loginfo(f"设置移动速度为: {speed_percentage}%")

    # 3. 设计直观的移动轨迹（十字型：前、后、左、右）
    # 选取一个中心参考点 (x=0.2, y=0.0, z=0.2)
    center_z = 0.2
    dist = 0.08 # 移动距离
    
    targets = [
        # 中心点
        ("Center", Pose(0.2,  0.0,  center_z, 0.0, 1.57, 0.0, metadata=PoseMetadata.v1())),
        # 向前伸
        ("Forward", Pose(0.2 + dist, 0.0, center_z, 0.0, 1.57, 0.0, metadata=PoseMetadata.v1())),
        # 向后缩
        ("Backward", Pose(0.2 - dist, 0.0, center_z, 0.0, 1.57, 0.0, metadata=PoseMetadata.v1())),
        # 回中心
        ("Back to Center", Pose(0.2, 0.0, center_z, 0.0, 1.57, 0.0, metadata=PoseMetadata.v1())),
        # 向左偏
        ("Left", Pose(0.2,  dist, center_z, 0.0, 1.57, 0.0, metadata=PoseMetadata.v1())),
        # 向右偏
        ("Right", Pose(0.2, -dist, center_z, 0.0, 1.57, 0.0, metadata=PoseMetadata.v1())),
        # 最终回到中心
        ("Final Center", Pose(0.2, 0.0, center_z, 0.0, 1.57, 0.0, metadata=PoseMetadata.v1())),
    ]

    rospy.loginfo("--- 第二步：开始执行直观轨迹测试 ---")
    for name, p in targets:
        if rospy.is_shutdown():
            break
            
        rospy.loginfo(f"正在移动到: {name} -> (x={p.x:.2f}, y={p.y:.2f}, z={p.z:.2f})")
        
        try:
            # 执行移动
            robot.move(p)
            # 每个点位停顿 0.5 秒，方便肉眼观察
            rospy.sleep(0.5) 
        except Exception as e:
            rospy.logerr(f"移动到 {name} 失败: {e}")

    # 4. 结束动作
    rospy.loginfo("测试完成，机械臂即将回到休眠姿态")
    robot.move_to_sleep_pose()
    rospy.loginfo("Done.")

if __name__ == "__main__":
    try:
        main()
    except rospy.ROSInterruptException:
        pass