#!/usr/bin/env python3
# -*- coding: utf-8 -*-

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
        
        # --- 再次抬高高度，先验证动作连贯性 ---
        self.MONO_GRASP_Z = -0.08  # 进一步抬高到离桌面 6cm 的地方测试
        self.SAFE_HEIGHT = 0.15
        
        rospy.Subscriber('/target_to_grasp', PointStamped, self.callback)
        self.status_pub = rospy.Publisher('/task_status', String, queue_size=1)
        
        # 强制复位姿态到观察位，清空所有潜在的 MoveIt 错误状态
        try:
            self.robot.request_new_calibration() # 尝试重置硬件状态
            self.robot.move_to_sleep_pose()
            rospy.sleep(1.0)
        except: pass
        
        rospy.loginfo("Execution Node V5 (弹性姿态版) 已就绪")

    def callback(self, msg):
        if self.is_busy: return
        self.target_point = msg.point

    def perform_pick_and_place(self, point):
        self.is_busy = True 
        tx, ty, tz_received = point.x, point.y, point.z
        tz = self.MONO_GRASP_Z if tz_received < 0.001 else tz_received
        
        rospy.loginfo(f"--- 目标点: X={tx:.3f}, Y={ty:.3f}, Z={tz:.3f} ---")
        
        try:
            # 1. 彻底清空之前的任务 ID
            self.robot.stop_move()
            rospy.sleep(1.0)
            
            # 2. 预抓取 - 关键：使用更灵活的姿态
            # 将 Pitch 从 1.57 改为 1.4，Yaw 允许根据位置自动微调
            rospy.loginfo(">> 步骤1: 移动到上方...")
            # 我们先尝试移动到一个相对安全的高点，不检查返回值，强制让它动
            self.robot.move_pose(tx, ty, tz + 0.1, 0.0, 1.4, 0.0)
            rospy.sleep(1.0)
            
            # 3. 抓取下潜
            rospy.loginfo(">> 步骤2: 下潜...")
            # 这里如果不成功，可能是物理极限，我们捕获它但不崩溃
            try:
                self.robot.move_pose(tx, ty, tz, 0.0, 1.4, 0.0)
            except:
                rospy.logwarn("无法精确到达抓取深度，尝试强行闭合...")
            
            # 4. 夹爪动作
            self.robot.close_gripper()
            rospy.sleep(1.5)
            
            # 5. 抬起并放置 (使用关节预设位或安全坐标)
            rospy.loginfo(">> 步骤3: 转移...")
            self.robot.move_pose(tx, ty, self.SAFE_HEIGHT, 0.0, 1.4, 0.0)
            rospy.sleep(0.5)
            
            # 直接给一个绝对安全的放置点（远离底座）
            self.robot.move_pose(0.2, -0.2, 0.15, 0.0, 1.4, 0.0)
            self.robot.open_gripper()
            rospy.sleep(1.0)
            
            # 6. 成功反馈
            self.status_pub.publish("FINISH")
            rospy.loginfo(">>> 动作完成")
            
        except Exception as e:
            rospy.logerr(f"动作序列执行失败: {e}")
            self.status_pub.publish("FAIL")
        finally:
            # 每次动作完强制回观察位，重置逆运动学解算器
            self.robot.move_pose(0.2, 0.0, 0.2, 0.0, 1.5, 0.0)
            self.is_busy = False

    def run(self):
        rate = rospy.Rate(2) # 极低频率执行，防止指令拥塞
        while not rospy.is_shutdown():
            if self.target_point and not self.is_busy:
                p = self.target_point
                self.target_point = None
                self.perform_pick_and_place(p)
            rate.sleep()

if __name__ == '__main__':
    node = ExecutionNode()
    node.run()