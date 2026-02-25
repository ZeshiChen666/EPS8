#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import math
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

    robot.move(Pose(0.25, 0.0, 0.25, 0.0, math.pi / 2, 0.0))
    input("Enter")
    robot.move(Pose(0.25, 0.0, 0.25, 0.0, math.pi , 0.0))
    input("Enter")
    robot.move(Pose(0.25, 0.0, 0.25, 0.0, -math.pi / 2 , 0.0))

    rospy.loginfo("测试完成，机械臂即将回到休眠姿态")
    robot.move_to_sleep_pose()
    rospy.loginfo("Done.")

if __name__ == "__main__":
    try:
        main()
    except rospy.ROSInterruptException:
        pass