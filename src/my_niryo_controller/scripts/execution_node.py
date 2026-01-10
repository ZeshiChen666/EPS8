#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
import time
import math
from geometry_msgs.msg import PointStamped
from std_msgs.msg import String
from niryo_robot_python_ros_wrapper.ros_wrapper import NiryoRosWrapper

class ExecutionNode:
    def __init__(self):
        rospy.init_node('execution_node', anonymous=True)
        
        rospy.loginfo("正在连接机械臂控制系统...")
        self.robot = NiryoRosWrapper()
        
        self.is_busy = False
        self.target_point = None
        
        # --- 物理保底参数 ---
        # 当感知节点传回 Z=0.0 (单目) 时，使用的保底抓取高度
        self.MONO_GRASP_Z = -0.14 
        
        rospy.Subscriber('/target_to_grasp', PointStamped, self.callback)
        self.status_pub = rospy.Publisher('/task_status', String, queue_size=1)
        
        rospy.loginfo("执行节点就绪！进入双目/单目自适应模式")

    def callback(self, msg):
        if self.is_busy:
            return
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
        tx, ty, tz_received = point.x, point.y, point.z
        
        # --- 核心逻辑：自适应 Z 轴 ---
        # 如果收到的 Z 接近 0，说明是单目模式，使用预设高度
        if tz_received < 0.001:
            tz = self.MONO_GRASP_Z
            mode_str = f"单目保底 (Z={tz:.3f})"
        else:
            tz = tz_received
            mode_str = f"双目对齐 (Z={tz:.3f})"
        
        rospy.loginfo(f"开始抓取！模式: {mode_str}, X={tx:.3f}, Y={ty:.3f}")
        
        try:
            self.robot.open_gripper()
            
            # 1. 预抓取 (上方 5cm)
            self.robot.move_pose(tx, ty, tz + 0.05, 0.0, 1.57, 0.0)
            
            # 2. 抓取 (下潜)
            self.robot.move_pose(tx, ty, tz, 0.0, 1.57, 0.0)
            self.robot.close_gripper()
            rospy.sleep(0.5)
            
            # 3. 抬起
            self.robot.move_pose(tx, ty, 0.2, 0.0, 1.57, 0.0)
            
            # 4. 放置 (移动到左前方放置区)
            rospy.loginfo("正在移动到放置区...")
            self.robot.move_pose(0.1, -0.2, 0.15, 0.0, 1.57, 0.0)
            self.robot.open_gripper()
            
            # 5. 回归观察位 (维持摄像头视野)
            rospy.loginfo("返回观察位...")
            self.robot.move_pose(0.25, 0.0, 0.25, 0.0, 1.57, 2.35)
            
            # 6. 反馈给决策节点：完成当前颜色
            rospy.sleep(0.5)
            self.status_pub.publish("FINISH")
            rospy.loginfo(">>> 目标达成，通知决策节点切换下个颜色")
            
        except Exception as e:
            rospy.logerr(f"动作执行出错: {e}")
            # 即使失败也尝试发 FINISH，防止决策流程死锁，或者你可以手动复位
            self.status_pub.publish("FINISH") 
        finally:
            self.is_busy = False 

if __name__ == '__main__':
    try:
        node = ExecutionNode()
        node.run()
    except rospy.ROSInterruptException:
        pass