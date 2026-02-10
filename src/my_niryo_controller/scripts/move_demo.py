#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
import math
from niryo_robot_python_ros_wrapper.ros_wrapper import NiryoRosWrapper

def test_coordinates():
    rospy.init_node('coordinate_verification')
    rospy.loginfo("正在初始化 Niryo 控制 system...")
    robot = NiryoRosWrapper()
    
    # --- 1. 配置参数 ---
    # 观察位坐标（初始位置）
    OBSERVE_POSE = [0.25, 0.0, 0.25, 0.0, math.pi / 2, 3*math.pi/4] 
    
    # 记录到的三个目标点坐标
    targets = [
        #{"name": "Red",   "x": 0.034, "y": 0.079},
        {"name": "Blue",  "x": 0.188, "y": 0.015},
        #{"name": "Green", "x": 0.133, "y": 0.119}
    ]
    
    # 待测试的两个高度
    z_heights = [-0.06, -0.065, -0.07]
    
    rospy.loginfo("开始坐标验证测试...")
    
    # 回到初始位置
    rospy.loginfo("移动到初始观察位...")
    robot.move_pose(*OBSERVE_POSE)
    robot.open_gripper()
    
    try:
        for z in z_heights:
            rospy.loginfo(f"\n===== 开始测试 Z = {z} =====")
            for target in targets:
                tx, ty = target["x"], target["y"]
                name = target["name"]
                
                # --- 核心优化逻辑 ---
                # 1. 动态计算 Yaw，使夹爪正对目标中心
                tyaw = math.atan2(ty, tx)
                # 2. 优化 Pitch，从 1.57 降到 1.5 以避开奇异点
                tpitch = 1.5
                
                rospy.loginfo(f"正在移动到 {name} 目标点: X={tx}, Y={ty}, Z={z} | Pitch={tpitch}, Yaw={tyaw:.2f}")
                
                # 执行移动
                robot.move_pose(tx, ty, z, 0.0, tpitch, tyaw)
                
                rospy.loginfo(f"已到达 {name} 点位。请观察位置是否准确。")
                input("按 Enter 键继续下一个点位...")
                
                # 稍微抬起一点，防止平移碰撞
                robot.move_pose(tx, ty, z + 0.05, 0.0, tpitch, tyaw)

        rospy.loginfo("\n测试完成，正在返回观察位...")
        robot.move_pose(*OBSERVE_POSE)
        rospy.loginfo("Done.")

    except Exception as e:
        rospy.logerr(f"测试过程中出现异常: {e}")

if __name__ == '__main__':
    try:
        test_coordinates()
    except rospy.ROSInterruptException:
        pass
