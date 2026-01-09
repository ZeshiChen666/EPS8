#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
import time
import math
from geometry_msgs.msg import PointStamped
from std_msgs.msg import String  # 引入 String 用于发送反馈
from niryo_robot_python_ros_wrapper.ros_wrapper import NiryoRosWrapper

class ExecutionNode:
    def __init__(self):
        # 初始化 ROS 节点
        rospy.init_node('execution_node', anonymous=True)
        
        rospy.loginfo("正在连接机械臂控制系统...")
        self.robot = NiryoRosWrapper()
        
        # 状态标志位
        self.is_busy = False
        self.target_point = None
        
        # 1. 订阅者：订阅【决策节点】过滤后的目标
        rospy.Subscriber('/target_to_grasp', PointStamped, self.callback)
        
        # 2. 发布者：向【决策节点】反馈任务状态
        self.status_pub = rospy.Publisher('/task_status', String, queue_size=1)
        
        rospy.loginfo("执行节点就绪！等待决策信号...")

    def callback(self, msg):
        if self.is_busy:
            return
        # 决策节点发来的 Z 可能是 0.0（单目模式），所以这里改为 >= 0
        if msg.point is not None:
            self.target_point = msg.point

    def run(self):
        rate = rospy.Rate(10) 
        while not rospy.is_shutdown():
            if self.target_point is not None and not self.is_busy:
                current_target = self.target_point
                self.target_point = None 
                self.perform_pick_and_place(current_target)
            rate.sleep()

    def perform_pick_and_place(self, point):
        self.is_busy = True 
        tx, ty, tz = point.x, point.y, point.z
        rospy.loginfo(f"开始抓取顺序任务！目标: X={tx:.3f}, Y={ty:.3f}, Z={tz:.3f}")
        
        try:
            # 1. 准备
            self.robot.open_gripper()
            
            # 2. 预抓取 (上方 10cm)
            # Roll=0, Pitch=1.57(垂直向下), Yaw=0
            self.robot.move_pose(tx, ty, tz + 0.1, 0.0, 1.57, 0.0)
            
            # 3. 抓取
            self.robot.move_pose(tx, ty, tz, 0.0, 1.57, 0.0)
            self.robot.close_gripper()
            
            # 4. 抬起
            self.robot.move_pose(tx, ty, 0.25, 0.0, 1.57, 0.0)
            
            # 5. 放置 (移动到左侧)
            rospy.loginfo("正在移动到放置区...")
            self.robot.move_pose(0.1, -0.25, 0.15, 0.0, 1.57, 0.0)
            self.robot.open_gripper()
            
            # 6. 回归观察位 (关键：必须回到能看到剩下方块的位置)
            rospy.loginfo("返回观察位...")
            # 使用关节空间或 Pose 移动回初始位置
            self.robot.move_pose(0.25, 0.0, 0.25, 0.0, 1.57, 2.35)
            
            # 7. 【重要】动作完成，通知决策节点切换颜色
            rospy.sleep(1.0) # 等稳了再发
            self.status_pub.publish("FINISH")
            rospy.loginfo("已通知决策节点切换下一个颜色")
            
        except Exception as e:
            rospy.logerr(f"动作执行出错: {e}")
        finally:
            self.is_busy = False 

if __name__ == '__main__':
    try:
        node = ExecutionNode()
        node.run()
    except rospy.ROSInterruptException:
        pass