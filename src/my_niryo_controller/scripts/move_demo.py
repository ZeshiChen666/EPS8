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
    # 观察位坐标（初始位置）- 必须保证这里不撞击
    OBSERVE_POSE = [0.25, 0.0, 0.25, 0.0, math.pi / 2, 3*math.pi/4] 
    
    # --- 关键修改：填入 Gazebo 的真实坐标 (Ground Truth) ---
    # 这些是你之前通过 rostopic echo 抓取的绝对准确坐标
    targets = [
        # Red: 真实 X=0.267, Y=-0.062
        {"name": "Red",   "x": 0.267, "y": -0.062},
        
        # Blue: 真实 X=0.250, Y=0.036
        {"name": "Blue",  "x": 0.250, "y": 0.036},
        
        # Green: 真实 X=0.212, Y=-0.037 (之前报错撞击的就是这个，现在用真值就不会撞了)
        {"name": "Green", "x": 0.212, "y": -0.037}
    ]
    
    # --- 关键修改：Z轴高度 ---
    # 你测试出 -0.067 是桌面。
    # 方块半高是 0.01。
    # 最佳抓取高度 = -0.067 + 0.01 = -0.057
    # 
    # 我们测试两个高度：
    # 1. -0.057 (完美抓取中心)
    # 2. -0.060 (稍低一点，抓得更深，但也更稳)
    # 绝对不要用 -0.07，那会打穿桌面！
    z_heights = [-0.057]
    
    rospy.loginfo("开始预设坐标移动测试...")
    
    # 先清除潜在错误状态
    try:
        robot.clear_collision_detected()
        # robot.request_new_calibration() # 模拟器中通常不需要频繁校准，如果报错可取消注释
    except: pass

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
                # 2. 优化 Pitch，设为 1.57 (90度垂直向下)
                tpitch = 1.57
                
                rospy.loginfo(f"正在移动到 {name} 目标点: X={tx:.3f}, Y={ty:.3f}, Z={z} | Yaw={tyaw:.2f}")
                
                # A. 抬高移动（防止平移撞到方块）
                robot.move_pose(tx, ty, z + 0.1, 0.0, tpitch, tyaw)

                # B. 下潜
                robot.move_pose(tx, ty, z, 0.0, tpitch, tyaw)
                rospy.sleep(1)
                robot.move_pose(tx, ty, z, 0.0, tpitch, tyaw)
                
                rospy.loginfo(f"已到达 {name} 抓取位。")
                print(f"检查点：夹爪是否包围了 {name} 方块？")
                
                # --- 模拟抓取动作 ---
                robot.close_gripper()
                rospy.sleep(2)
                
                
                # C. 抬起
                robot.move_pose(tx, ty, z + 0.1, 0.0, tpitch, tyaw)
                rospy.sleep(0.5)
                robot.move_pose(0.0, -0.25, 0.15, 0.0, 1.57, 0.0)
                rospy.sleep(2)
                robot.open_gripper()
                
                
                # input("按 Enter 键继续下一个点位...") # 如果想自动连贯运行，可以注释掉这行

        rospy.loginfo("\n测试完成，正在返回观察位...")
        robot.move_pose(*OBSERVE_POSE)
        rospy.loginfo("Done.")

    except Exception as e:
        rospy.logerr(f"测试过程中出现异常: {e}")
        try:
            robot.clear_collision_detected()
        except: pass

if __name__ == '__main__':
    try:
        test_coordinates()
    except rospy.ROSInterruptException:
        pass