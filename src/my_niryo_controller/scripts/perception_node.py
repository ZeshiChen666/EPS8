#!/usr/bin/env python3
import rospy
import cv2
import numpy as np
from sensor_msgs.msg import Image, CameraInfo
from cv_bridge import CvBridge

class PerceptionNode:
    def __init__(self):
        rospy.init_node('perception_node')
        self.bridge = CvBridge()
        
        # 订阅彩色图和深度图
        self.image_sub = rospy.Subscriber("/camera/color/image_raw", Image, self.image_callback)
        self.depth_sub = rospy.Subscriber("/camera/depth/image_raw", Image, self.depth_callback)
        
        self.color_image = None
        self.depth_image = None

    def image_callback(self, data):
        # 将 ROS 图像消息转换为 OpenCV 格式
        self.color_image = self.bridge.imgmsg_to_cv2(data, "bgr8")
        self.process_vision()

    def depth_callback(self, data):
        # 深度图通常是 32FC1 或 16UC1 格式
        self.depth_image = self.bridge.imgmsg_to_cv2(data, "passthrough")

    def process_vision(self):
        if self.color_image is None or self.depth_image is None:
            return

        # --- 步骤 1: 颜色识别 (以红色为例) ---
        hsv = cv2.cvtColor(self.color_image, cv2.COLOR_BGR2HSV)
        lower_red = np.array([0, 100, 100])
        upper_red = np.array([10, 255, 255])
        mask = cv2.inRange(hsv, lower_red, upper_red)

        # --- 步骤 2: 找到中心点 ---
        M = cv2.moments(mask)
        if M["m00"] > 0:
            cx = int(M["m10"] / M["m00"])
            cy = int(M["m01"] / M["m00"])
            
            # --- 步骤 3: 获取深度 ---
            # 注意深度图的单位通常是米或毫米
            depth = self.depth_image[cy, cx]
            rospy.loginfo(f"发现红色方块: 像素({cx}, {cy}), 距离: {depth:.2f}m")
            
            # 在画面上画个圈显示识别结果
            cv2.circle(self.color_image, (cx, cy), 10, (0, 0, 255), -1)

        cv2.imshow("Vision Monitor", self.color_image)
        cv2.waitKey(1)

if __name__ == '__main__':
    node = PerceptionNode()
    rospy.spin()