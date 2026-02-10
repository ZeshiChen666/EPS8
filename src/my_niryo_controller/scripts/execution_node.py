#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import math
import rospy
import time
from geometry_msgs.msg import PointStamped
from std_msgs.msg import String
from niryo_robot_python_ros_wrapper.ros_wrapper import NiryoRosWrapper

class ExecutionNode:
    def __init__(self):
        rospy.init_node('execution_node', anonymous=True)
        rospy.loginfo("正在连接控制系统...")
        self.robot = NiryoRosWrapper()
        
        self.is_busy = False
        self.target_point = None
        
        # 观察位置 [x, y, z, r, p, y]
        self.OBSERVATION_POSE = [0.25, 0.0, 0.25, 0.0, math.pi / 2, 3*math.pi/4]
        
        # 抓取参数
        # 你的日志显示Z=-0.08，说明是单目模式，这里我们保留你的设定
        self.MONO_GRASP_Z = -0.08  
        self.SAFE_HEIGHT = 0.15
        
        rospy.Subscriber('/target_to_grasp', PointStamped, self.callback)
        self.status_pub = rospy.Publisher('/task_status', String, queue_size=1)
        
        # 初始化：强制复位一次
        try:
            self.robot.request_new_calibration()
            self.go_to_observation()
        except: pass
        
        rospy.loginfo("Execution Node V6 (时序修复版) 已就绪")

    def go_to_observation(self):
        self.robot.move_pose(*self.OBSERVATION_POSE)

    def callback(self, msg):
        if self.is_busy: return
        self.target_point = msg.point

    def perform_pick_and_place(self, point):
        self.is_busy = True 
        tx, ty, tz_received = point.x, point.y, point.z
        
        # 如果是单目模式传来的 Z=0 (或接近0)，使用预设抓取深度
        tz = self.MONO_GRASP_Z if tz_received < 0.005 else tz_received
        
        rospy.loginfo(f"--- 执行任务: X={tx:.3f}, Y={ty:.3f}, Z={tz:.3f} ---")
        
        try:
            self.robot.stop_move()
            
            # 1. 预抓取 (上方)
            self.robot.move_pose(tx, ty, tz + 0.15, 0.0, 1.57, 0.0)
            
            # 2. 下潜
            self.robot.open_gripper()
            # 注意：模拟中如果 Z 太低可能撞击，如遇到问题可调高 tz
            self.robot.move_pose(tx, ty, tz, 0.0, 1.57, 0.0)
            
            # 3. 抓取
            self.robot.close_gripper()
            rospy.sleep(0.8)
            
            # 4. 抬起
            self.robot.move_pose(tx, ty, self.SAFE_HEIGHT, 0.0, 1.57, 0.0)
            
            # 5. 放置 (放在左侧区域，Y负轴方向)
            self.robot.move_pose(0.0, -0.25, 0.15, 0.0, 1.57, 0.0)
            self.robot.open_gripper()
            rospy.sleep(0.5)
            
            rospy.loginfo(">>> 放置动作完成，开始复位...")

            # --- 关键修改区域：严格的时序控制 ---

            # 6. 先回到观察位置 (这是动作的一部分，不是finally)
            self.go_to_observation()
            
            # 7. 强制等待相机稳定 (消除运动模糊)
            # 这1.5秒至关重要，让相机看清楚桌面，重新计算Blue的坐标
            rospy.sleep(1.5)
            
            # 8. 只有现在，才允许发送 FINISH
            self.status_pub.publish("FINISH")
            rospy.loginfo(">>> 信号已发送：切换下一个目标")
            
        except Exception as e:
            rospy.logerr(f"动作序列执行失败: {e}")
            # 如果失败，不发送FINISH，避免逻辑混乱
            self.status_pub.publish("FAIL")
            
        finally:
            # 确保标志位最后被清除
            self.is_busy = False

    def run(self):
        rate = rospy.Rate(5)
        while not rospy.is_shutdown():
            if self.target_point and not self.is_busy:
                p = self.target_point
                self.target_point = None
                self.perform_pick_and_place(p)
            rate.sleep()

if __name__ == '__main__':
    node = ExecutionNode()
    node.run()