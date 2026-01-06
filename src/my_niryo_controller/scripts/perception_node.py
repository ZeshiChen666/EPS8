#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import math
import rospy
import cv2
import numpy as np
from sensor_msgs.msg import Image, CameraInfo
from cv_bridge import CvBridge
from image_geometry import PinholeCameraModel

# 引入 Niryo 控制包
from niryo_robot_python_ros_wrapper.ros_wrapper import NiryoRosWrapper
from niryo_robot_python_ros_wrapper import NiryoRosWrapper, Pose, JointsPosition

class PerceptionNode:
    def __init__(self):
        # 注意：这里不再调用 init_node，因为 main 函数里已经初始化过了
        self.bridge = CvBridge()
        self.camera_model = PinholeCameraModel()
        
        # 图像缓存
        self.color_image = None
        self.depth_image = None
        
        # --- 默认内参设置 ---
        rospy.logwarn("使用预设内参以确保窗口弹出并支持坐标换算...")
        dummy_info = CameraInfo()
        dummy_info.header.frame_id = "camera_color_optical_frame"
        dummy_info.K = [476.7, 0.0, 320.5, 0.0, 476.7, 240.5, 0.0, 0.0, 1.0]
        dummy_info.P = [476.7, 0.0, 320.5, 0.0, 0.0, 476.7, 240.5, 0.0, 0.0, 0.0, 1.0, 0.0]
        dummy_info.width = 640
        dummy_info.height = 480
        self.camera_model.fromCameraInfo(dummy_info)

        # --- 订阅有数据的话题 ---
        # 如果你之前测试 /gazebo_camera/image_raw 有数据，请保持使用它
        self.image_sub = rospy.Subscriber("/gazebo_camera/image_raw", Image, self.image_callback)
        self.depth_sub = rospy.Subscriber("/camera/depth/image_raw", Image, self.depth_callback)
        
        # 定义颜色范围 (HSV)
        self.colors = {
            "Red":   (np.array([0, 120, 70]),  np.array([10, 255, 255])),
            "Green": (np.array([45, 100, 50]), np.array([75, 255, 255])),
            "Blue":  (np.array([100, 150, 50]), np.array([130, 255, 255]))
        }
        
        rospy.loginfo("感知节点已启动，正在监听图像话题...")

    def image_callback(self, data):
        try:
            self.color_image = self.bridge.imgmsg_to_cv2(data, "bgr8")
            self.process_vision()
        except Exception as e:
            rospy.logerr(f"图像转换失败: {e}")

    def depth_callback(self, data):
        try:
            self.depth_image = self.bridge.imgmsg_to_cv2(data, "passthrough")
        except:
            pass

    def process_vision(self):
        if self.color_image is None:
            return

        canvas = self.color_image.copy()
        hsv = cv2.cvtColor(self.color_image, cv2.COLOR_BGR2HSV)

        for color_name, (lower, upper) in self.colors.items():
            mask = cv2.inRange(hsv, lower, upper)
            
            # 形态学去噪
            kernel = np.ones((5,5), np.uint8)
            mask = cv2.morphologyEx(mask, cv2.MORPH_OPEN, kernel)
            
            cnts, _ = cv2.findContours(mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
            
            if len(cnts) > 0:
                c = max(cnts, key=cv2.contourArea)
                if cv2.contourArea(c) > 300: 
                    x, y, w, h = cv2.boundingRect(c)
                    
                    bgr = (0,0,0)
                    if color_name == "Red": bgr = (0,0,255)
                    elif color_name == "Green": bgr = (0,255,0)
                    elif color_name == "Blue": bgr = (255,0,0)
                    
                    cv2.rectangle(canvas, (x, y), (x + w, y + h), bgr, 2)
                    cv2.putText(canvas, f"{color_name} Block", (x, y - 10), 
                                cv2.FONT_HERSHEY_SIMPLEX, 0.6, bgr, 2)

        cv2.imshow("Niryo Cube Detection", canvas)
        cv2.waitKey(1)

def move_to_observation():
    """ 初始化后移动机械臂 """
    try:
        rospy.loginfo("正在连接 Niryo Wrapper...")
        robot = NiryoRosWrapper()
        # 必须在 init_node 之后 sleep 才有效
        rospy.sleep(2.0) 
        
        rospy.loginfo("正在移动到观察位置 (俯视姿态)...")
        # x, y, z, roll, pitch, yaw
        #robot.move_pose(0.25, 0.0, 0.35, 0.0, 1.57, 0.0)
        robot.move(Pose(0.25, 0.0, 0.25, 0.0, math.pi / 2, 3*math.pi/4))
        #robot.move(JointsPosition(0.0, 0.0, 0.0, 0.0, 0.0, 1.57))
        rospy.loginfo("机械臂已到达观察位置")
    except Exception as e:
        rospy.logwarn(f"机械臂移动失败: {e}")

if __name__ == '__main__':
    try:
        # 1. 核心修正：首先初始化节点
        rospy.init_node('perception_node', anonymous=True)
        rospy.loginfo("ROS Perception Node Initialized")

        # 2. 移动机械臂
        move_to_observation()
        
        # 3. 启动视觉节点
        node = PerceptionNode()
        
        # 4. 进入循环
        rospy.spin()
    except rospy.ROSInterruptException:
        pass
    finally:
        cv2.destroyAllWindows()