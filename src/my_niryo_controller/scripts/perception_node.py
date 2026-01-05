#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
import cv2
import numpy as np
from sensor_msgs.msg import Image, CameraInfo
from cv_bridge import CvBridge
from image_geometry import PinholeCameraModel

# 引入 Niryo 控制包，用于启动时自动移动机械臂
from niryo_robot_python_ros_wrapper.ros_wrapper import NiryoRosWrapper

class PerceptionNode:
    def __init__(self):
        rospy.init_node('perception_node', anonymous=True)
        self.bridge = CvBridge()
        self.camera_model = PinholeCameraModel()
        
        # 图像缓存
        self.color_image = None
        self.depth_image = None
        
        # --- 核心修改：强制使用默认内参，跳过等待 ---
        # 因为 /camera/color/camera_info 确认没数据，我们手动赋值防止程序挂起
        rospy.logwarn("使用预设内参以确保窗口弹出并支持坐标换算...")
        dummy_info = CameraInfo()
        dummy_info.header.frame_id = "camera_color_optical_frame"
        dummy_info.K = [476.7, 0.0, 320.5, 0.0, 476.7, 240.5, 0.0, 0.0, 1.0]
        dummy_info.P = [476.7, 0.0, 320.5, 0.0, 0.0, 476.7, 240.5, 0.0, 0.0, 0.0, 1.0, 0.0]
        dummy_info.width = 640
        dummy_info.height = 480
        self.camera_model.fromCameraInfo(dummy_info)

        # --- 核心修改：订阅确认有数据的话题 ---
        self.image_sub = rospy.Subscriber("/gazebo_camera/image_raw", Image, self.image_callback)
        # 注意：如果后续需要深度，可以根据 rostopic list 尝试 /gazebo_camera/depth/image_raw
        self.depth_sub = rospy.Subscriber("/camera/depth/image_raw", Image, self.depth_callback)
        
        # 定义颜色范围 (HSV)
        self.colors = {
            "Red":   (np.array([0, 120, 70]),  np.array([10, 255, 255])),
            "Green": (np.array([45, 100, 50]), np.array([75, 255, 255])),
            "Blue":  (np.array([100, 150, 50]), np.array([130, 255, 255]))
        }
        
        rospy.loginfo("感知节点已启动，正在监听 /gazebo_camera/image_raw ...")

    def image_callback(self, data):
        try:
            # 转换为 OpenCV 格式
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

        # 遍历识别红、绿、蓝
        for color_name, (lower, upper) in self.colors.items():
            mask = cv2.inRange(hsv, lower, upper)
            
            # 形态学去噪
            kernel = np.ones((5,5), np.uint8)
            mask = cv2.morphologyEx(mask, cv2.MORPH_OPEN, kernel)
            
            cnts, _ = cv2.findContours(mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
            
            if len(cnts) > 0:
                c = max(cnts, key=cv2.contourArea)
                if cv2.contourArea(c) > 300: # 过滤噪点
                    x, y, w, h = cv2.boundingRect(c)
                    
                    # 设定框的颜色
                    bgr = (0,0,0)
                    if color_name == "Red": bgr = (0,0,255)
                    elif color_name == "Green": bgr = (0,255,0)
                    elif color_name == "Blue": bgr = (255,0,0)
                    
                    cv2.rectangle(canvas, (x, y), (x + w, y + h), bgr, 2)
                    cv2.putText(canvas, f"{color_name} Block", (x, y - 10), 
                                cv2.FONT_HERSHEY_SIMPLEX, 0.6, bgr, 2)

        # 强制弹窗
        cv2.imshow("Niryo Cube Detection", canvas)
        cv2.waitKey(1)

def move_to_observation():
    """ 启动时将手臂移动到不遮挡视线的位置 """
    try:
        rospy.loginfo("正在尝试连接机器人并移动到观察位...")
        robot = NiryoRosWrapper()
        rospy.sleep(1.0)
        # 经典观察位：向前方平伸，摄像头向下俯视
        robot.move_pose(0.25, 0.0, 0.35, 0.0, 1.57, 0.0)
        rospy.loginfo("手臂已移开，视野清晰")
    except Exception as e:
        rospy.logwarn(f"手臂移动失败 (可能 wrapper 还没准备好): {e}")

if __name__ == '__main__':
    # 1. 先尝试移开机械臂手臂
    move_to_observation()
    
    # 2. 启动感知节点
    try:
        node = PerceptionNode()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass
    finally:
        cv2.destroyAllWindows()