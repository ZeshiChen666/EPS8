#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
from geometry_msgs.msg import PointStamped
from std_msgs.msg import String

class DecisionNode:
    def __init__(self):
        rospy.init_node('decision_node')

        # 1. 设定拼装顺序：红 -> 蓝 -> 绿
        self.sequence = ["Red", "Blue", "Green"]
        self.current_step = 0
        
        # 2. 订阅感知的原始数据
        self.sub_perception = rospy.Subscriber('/detected_block_coord', PointStamped, self.perception_callback)
        
        # 3. 订阅执行端的完成状态反馈
        self.sub_status = rospy.Subscriber('/task_status', String, self.status_callback)
        
        # 4. 发布过滤后的目标坐标给执行端
        self.pub_target = rospy.Publisher('/target_to_grasp', PointStamped, queue_size=1)
        
        rospy.loginfo(f"决策节点就绪！当前目标顺序: {self.sequence}")

    def perception_callback(self, data):
        if self.current_step >= len(self.sequence):
            return

        # 核心过滤逻辑：只有颜色匹配当前步，才转发
        target_color = self.sequence[self.current_step]
        if data.header.frame_id == target_color:
            # 转发时将 frame_id 统一设为 base_link，方便执行端计算
            data.header.frame_id = "base_link"
            self.pub_target.publish(data)

    def status_callback(self, msg):
        # 当执行端发回 "FINISH" 时，进入下一个目标
        if msg.data == "FINISH":
            self.current_step += 1
            if self.current_step < len(self.sequence):
                rospy.loginfo(f"目标完成！切换到下一个: {self.sequence[self.current_step]}")
            else:
                rospy.loginfo("恭喜！所有方块已按顺序处理完毕。")

if __name__ == '__main__':
    DecisionNode()
    rospy.spin()