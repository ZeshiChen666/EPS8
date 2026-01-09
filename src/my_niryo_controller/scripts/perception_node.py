#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import math
import rospy
import cv2
import numpy as np
import tf2_ros
import tf2_geometry_msgs
from sensor_msgs.msg import Image, CameraInfo
from geometry_msgs.msg import PointStamped
from cv_bridge import CvBridge
from image_geometry import PinholeCameraModel
from niryo_robot_python_ros_wrapper.ros_wrapper import NiryoRosWrapper, Pose

class PerceptionNode:
    def __init__(self):
        self.bridge = CvBridge()
        self.camera_model = PinholeCameraModel()
        
        # TF 监听器：用于坐标系变换
        self.tf_buffer = tf2_ros.Buffer()
        self.tf_listener = tf2_ros.TransformListener(self.tf_buffer)

        # 发布者：将计算好的 XYZ 发布到 /detected_block_coord
        self.coord_pub = rospy.Publisher('/detected_block_coord', PointStamped, queue_size=1)
        
        self.color_image = None
        self.depth_image = None
        
        # 预设内参 (以防 CameraInfo 话题没有数据导致无法初始化模型)
        dummy_info = CameraInfo()
        dummy_info.header.frame_id = "camera_link"
        dummy_info.K = [476.7, 0.0, 320.5, 0.0, 476.7, 240.5, 0.0, 0.0, 1.0]
        dummy_info.P = [476.7, 0.0, 320.5, 0.0, 0.0, 476.7, 240.5, 0.0, 0.0, 0.0, 1.0, 0.0]
        dummy_info.width = 640
        dummy_info.height = 480
        self.camera_model.fromCameraInfo(dummy_info)

        # 订阅话题
        self.image_sub = rospy.Subscriber("/gazebo_camera/image_raw", Image, self.image_callback)
        self.depth_sub = rospy.Subscriber("/camera/depth/image_raw", Image, self.depth_callback)
        
        # 定义颜色范围 (HSV)
        self.colors = {
            "Red":   (np.array([0, 150, 50]),   np.array([10, 255, 255])),
            "Green": (np.array([45, 100, 50]),  np.array([75, 255, 255])),
            "Blue":  (np.array([100, 150, 50]), np.array([130, 255, 255]))
        }
        
        # 映射颜色名称到 BGR 绘图颜色
        self.color_bgr = {
            "Red": (0, 0, 255),
            "Green": (0, 255, 0),
            "Blue": (255, 0, 0)
        }
        
        rospy.loginfo("感知节点已启动：单目+深度双模式开启")

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
            mask = cv2.morphologyEx(mask, cv2.MORPH_OPEN, np.ones((5,5), np.uint8))
            cnts, _ = cv2.findContours(mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
            
            if len(cnts) > 0:
                c = max(cnts, key=cv2.contourArea)
                if cv2.contourArea(c) > 300: 
                    # 1. 获取旋转矩形信息
                    rect = cv2.minAreaRect(c)
                    box = cv2.boxPoints(rect)
                    box = np.intp(box)
                    cx, cy = int(rect[0][0]), int(rect[0][1])
                    angle = rect[2] # 得到旋转角度

                    # 2. 根据颜色名称选择绘图颜色
                    bgr = self.color_bgr.get(color_name, (0, 255, 0))

                    # 3. 绘制旋转框和中心点
                    cv2.drawContours(canvas, [box], 0, bgr, 2)
                    cv2.circle(canvas, (cx, cy), 5, bgr, -1)
                    cv2.putText(canvas, f"{color_name} {angle:.1f}deg", (cx - 20, cy - 20), 
                                cv2.FONT_HERSHEY_SIMPLEX, 0.5, bgr, 2)

                    # 4. 核心逻辑：发布坐标到主题
                    if self.depth_image is not None and not np.isnan(self.depth_image[cy, cx]):
                        # 模式：深度图模式
                        self.calculate_and_publish(cx, cy, canvas, bgr, color_name)
                    else:
                        # 模式：单目几何模式 (假设桌面高度 Z = 0)
                        self.calculate_without_depth(cx, cy, canvas, bgr, 0.0, color_name)

        cv2.imshow("Niryo Detection (Rotated Box)", canvas)
        cv2.waitKey(1)

    def calculate_and_publish(self, u, v, canvas, bgr, color_name):
        """ 深度图模式 """
        try:
            depth = self.depth_image[v, u]
            if depth <= 0: return
            ray = self.camera_model.projectPixelTo3dRay((u, v))
            p_cam = PointStamped()
            p_cam.header.frame_id = "camera_link"
            p_cam.header.stamp = rospy.Time(0)
            p_cam.point.x, p_cam.point.y, p_cam.point.z = [r * depth for r in ray]

            p_base = self.tf_buffer.transform(p_cam, "base_link", timeout=rospy.Duration(0.1))
            
            # --- 关键：打上颜色标签 ---
            p_base.header.frame_id = color_name 
            self.coord_pub.publish(p_base)
            
            text = f"XYZ: {p_base.point.x:.2f}, {p_base.point.y:.2f}"
            cv2.putText(canvas, text, (u - 20, v + 20), cv2.FONT_HERSHEY_SIMPLEX, 0.4, bgr, 1)
        except: pass

    def calculate_without_depth(self, u, v, canvas, angle, table_z, color_name):
        """ 单目模式 """
        try:
            ray = self.camera_model.projectPixelTo3dRay((u, v))
            trans = self.tf_buffer.lookup_transform("base_link", 
                    "camera_link", rospy.Time(0), rospy.Duration(0.5))
            cam_z = trans.transform.translation.z
            if abs(ray[2]) > 0.001:
                scale = (table_z - cam_z) / ray[2]
                p_base = PointStamped()
                p_base.header.frame_id = color_name  # 打上颜色标签
                p_base.header.stamp = rospy.Time.now()
                p_base.point.x = trans.transform.translation.x + ray[0] * scale
                p_base.point.y = trans.transform.translation.y + ray[1] * scale
                p_base.point.z = table_z
                
                self.coord_pub.publish(p_base)
                cv2.putText(canvas, "MONO MODE", (10, 30), cv2.FONT_HERSHEY_SIMPLEX, 0.6, (0, 165, 255), 2)
        except Exception as e:
            rospy.logwarn_throttle(1, f"TF 转换失败: {e}")

def move_to_observation():
    try:
        robot = NiryoRosWrapper()
        rospy.sleep(1.0)
        # 移动到你要求的观察位置
        robot.move(Pose(0.25, 0.0, 0.25, 0.0, math.pi / 2, 3*math.pi/4))
    except Exception as e:
        rospy.logwarn(f"移动失败: {e}")

if __name__ == '__main__':
    try:
        rospy.init_node('perception_node', anonymous=True)
        move_to_observation()
        node = PerceptionNode()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass
    finally:
        cv2.destroyAllWindows()