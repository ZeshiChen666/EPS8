#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
import cv2
import numpy as np
from sensor_msgs.msg import Image, CameraInfo
from cv_bridge import CvBridge
from image_geometry import PinholeCameraModel
from ultralytics import YOLO
from my_niryo_controller.msg import PuzzlePiece

# ==================== 配置参数 ====================
# YOLO 模型路径（训练完成后替换为实际路径）
MODEL_PATH = "/home/zc2033/catkin_ws/src/my_niryo_controller/scripts/train_yolo/runs/puzzle_model/weights/best.pt"

# 相机距桌面高度（米），用于单目模式坐标转换
CAMERA_HEIGHT = 0.40        # TODO: 用实际测量值替换

# 拼图把手抓取高度（米，相对机械臂底座）
Z_PICK = 0.02               # TODO: 用实际测量值替换

# YOLO 置信度阈值
CONF_THRESHOLD = 0.5

# 类别ID → 拼图类型名称（与训练时 yaml 顺序一致）
CLASS_NAMES = {
    0: "orange_square",
    1: "red_circle",
    2: "blue_rectangle",
    3: "yellow_triangle",
    4: "green_oval",
}
# =================================================

class PerceptionNode:
    def __init__(self):
        rospy.init_node("perception_node", anonymous=False)

        self.bridge = CvBridge()
        self.camera_model = PinholeCameraModel()

        # 初始化相机模型（使用预设内参，会被话题数据覆盖）
        self._init_camera_model()

        # 加载 YOLO 模型
        rospy.loginfo("Loading YOLO model...")
        try:
            self.model = YOLO(MODEL_PATH)
            rospy.loginfo("YOLO model loaded successfully.")
        except Exception as e:
            rospy.logwarn("YOLO model not found: %s", str(e))
            self.model = None

        # 订阅相机彩色图像
        rospy.Subscriber(
            "/niryo_robot_vision/image_raw",
            Image,
            self.image_callback,
            queue_size=1,
            buff_size=2**24
        )

        # 订阅相机内参（有数据时自动更新相机模型）
        rospy.Subscriber(
            "/niryo_robot_vision/camera_info",
            CameraInfo,
            self.camera_info_callback,
            queue_size=1
        )

        # 发布检测到的拼图块（每块单独发布一条消息）
        self.piece_pub = rospy.Publisher(
            "/puzzle/detected_pieces",
            PuzzlePiece,
            queue_size=10
        )

        # 发布调试图像（用 rqt_image_view 查看检测效果）
        self.debug_pub = rospy.Publisher(
            "/puzzle/debug_image",
            Image,
            queue_size=1
        )

        rospy.loginfo("Perception node started.")

    def _init_camera_model(self):
        """使用 Niryo One 默认内参初始化相机模型"""
        dummy_info = CameraInfo()
        dummy_info.header.frame_id = "camera_link"
        dummy_info.K = [476.7, 0.0, 320.5,
                        0.0,   476.7, 240.5,
                        0.0,   0.0,   1.0]
        dummy_info.P = [476.7, 0.0, 320.5, 0.0,
                        0.0,   476.7, 240.5, 0.0,
                        0.0,   0.0,   1.0,  0.0]
        dummy_info.width = 640
        dummy_info.height = 480
        self.camera_model.fromCameraInfo(dummy_info)

    def camera_info_callback(self, msg):
        """收到真实内参时更新相机模型"""
        self.camera_model.fromCameraInfo(msg)

    def pixel_to_robot_xy(self, px, py):
        """
        将像素坐标转换为机械臂坐标系的 XY 坐标
        使用针孔相机模型 + 固定相机高度（适用于 2D 平面拼图）
        Z 方向使用固定值 Z_PICK
        """
        # projectPixelTo3dRay 返回单位方向向量
        ray = self.camera_model.projectPixelTo3dRay((px, py))
        # 按相机距桌面高度缩放，得到实际物理坐标
        x = ray[0] * CAMERA_HEIGHT
        y = ray[1] * CAMERA_HEIGHT
        return x, y

    def image_callback(self, msg):
        """相机图像回调：运行 YOLO 检测并发布结果"""
        try:
            color_image = self.bridge.imgmsg_to_cv2(msg, "bgr8")
        except Exception as e:
            rospy.logerr("Image conversion failed: %s", str(e))
            return

        if self.model is None:
            rospy.logwarn_throttle(5, "YOLO model not loaded, skipping detection.")
            return

        debug_img = color_image.copy()

        # 运行 YOLO 推理
        results = self.model(color_image, conf=CONF_THRESHOLD, verbose=False)

        detected_count = 0
        for result in results:
            for box in result.boxes:
                cls_id = int(box.cls[0])
                conf   = float(box.conf[0])

                if cls_id not in CLASS_NAMES:
                    continue

                # 获取边界框中心像素坐标
                x1, y1, x2, y2 = box.xyxy[0].cpu().numpy()
                px = int((x1 + x2) / 2)
                py = int((y1 + y2) / 2)

                # 像素坐标 → 机械臂 XY 坐标（Z 固定）
                robot_x, robot_y = self.pixel_to_robot_xy(px, py)

                # 构建并发布消息
                piece_msg = PuzzlePiece()
                piece_msg.piece_type   = CLASS_NAMES[cls_id]
                piece_msg.pose.x       = robot_x
                piece_msg.pose.y       = robot_y
                piece_msg.pose.z       = Z_PICK     # Z 使用固定值
                piece_msg.pose.roll    = 0.0
                piece_msg.pose.pitch   = 0.0
                piece_msg.pose.yaw     = 0.0
                piece_msg.confidence   = conf
                piece_msg.pixel_x      = px
                piece_msg.pixel_y      = py
                self.piece_pub.publish(piece_msg)
                detected_count += 1

                # 在调试图像上绘制检测框和坐标
                cv2.rectangle(debug_img, (int(x1), int(y1)), (int(x2), int(y2)), (0, 255, 0), 2)
                cv2.circle(debug_img, (px, py), 5, (0, 255, 0), -1)
                cv2.putText(debug_img,
                            f"{CLASS_NAMES[cls_id]} {conf:.2f}",
                            (int(x1), int(y1) - 10),
                            cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 0), 2)
                cv2.putText(debug_img,
                            f"({robot_x:.3f}, {robot_y:.3f})",
                            (int(x1), int(y2) + 18),
                            cv2.FONT_HERSHEY_SIMPLEX, 0.4, (255, 255, 0), 1)

        if detected_count > 0:
            rospy.loginfo_throttle(2, f"Detected {detected_count} puzzle piece(s).")

        # 发布调试图像
        try:
            self.debug_pub.publish(
                self.bridge.cv2_to_imgmsg(debug_img, encoding="bgr8")
            )
        except Exception as e:
            rospy.logerr("Failed to publish debug image: %s", str(e))

    def run(self):
        rospy.spin()


if __name__ == "__main__":
    node = PerceptionNode()
    node.run()
