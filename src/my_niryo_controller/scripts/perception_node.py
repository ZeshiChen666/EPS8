from pyniryo import *
import cv2

# 颜色阈值保持不变
COLOR_THRESHOLDS_PIECE = {
    "RED": ([0, 80, 150], [15, 255, 255]),
    "ORANGE": ([16, 50, 150], [28, 200, 255]),
    "YELLOW": ([25, 40, 180], [45, 150, 255]),
    "GREEN": ([45, 50, 150], [75, 255, 255]),
    "BLUE": ([90, 150, 150], [120, 255, 255])
}

COLOR_THRESHOLDS_SLOT = {
    "RED": ([0, 100, 160], [7, 160, 210]),
    "ORANGE": ([9, 110, 160], [18, 160, 210]),
    "YELLOW": ([38, 70, 180], [45, 120, 230]),
    "GREEN": ([72, 90, 140], [80, 160, 190]),
    "BLUE": ([104, 200, 170], [112, 255, 220])
}

class PerceptionNode:
    def __init__(self, robot, workspace_pieces, workspace_slots):
        self.robot = robot
        self.workspace_pieces = workspace_pieces
        self.workspace_slots = workspace_slots
        # 定义一个统一的窗口名字，防止无限弹窗
        self.window_name = "Robot Vision Stream"

    def get_workspace_image(self, workspace_name):
        mtx, dist = self.robot.get_camera_intrinsics()
        img_compressed = self.robot.get_img_compressed()
        img_raw = uncompress_image(img_compressed)
        # 获取无损矫正图像
        img_undistort = undistort_image(img_raw, mtx, dist)

        img_workspace = vision.extract_img_workspace(img_undistort, 1.0)
        
        # 同时返回完整矫正图像和工作区图像
        return img_undistort, img_workspace

    def detect_piece(self):
        img_undistort, img = self.get_workspace_image(self.workspace_pieces)
        
        # 如果连工作区都没找到，就显示全景的无损相机画面，防止视频流卡死
        if img is None:
            vision.show_img(self.window_name, img_undistort, wait_ms=30)
            return None, None

        hsv = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)
        img_debug = img.copy() # 在副本上画图，不污染原图

        for color, (lower, upper) in COLOR_THRESHOLDS_PIECE.items():
            mask = cv2.inRange(hsv, tuple(lower), tuple(upper))
            mask = vision.morphological_transformations(
                mask, morpho_type=vision.MorphoType.ERODE,
                kernel_shape=(5,5), kernel_type=vision.KernelType.ELLIPSE
            )

            contour = vision.biggest_contour_finder(mask)
            if contour is None or len(contour) == 0:
                continue

            try:
                cx, cy = vision.get_contour_barycenter(contour)
            except:
                continue

            angle = vision.get_contour_angle(contour)
            if color == "YELLOW":
                angle = 0  

            # --- 核心：在同一窗口叠加轮廓和角度 ---
            img_debug = vision.draw_contours(img_debug, [contour])
            img_debug = vision.draw_barycenter(img_debug, cx, cy)
            img_debug = vision.draw_angle(img_debug, cx, cy, angle)
            
            # 使用固定的窗口名字并设置 wait_ms=30
            vision.show_img(self.window_name, img_debug, wait_ms=30)
            
            x_rel, y_rel = vision.relative_pos_from_pixels(img, cx, cy)
            pose = self.robot.get_target_pose_from_rel(
                self.workspace_pieces,
                height_offset=0.01,
                x_rel=x_rel, y_rel=y_rel, yaw_rel=angle
            )
            return color, pose

        # 如果找了一圈什么颜色都没发现，也要刷新窗口，这样才是流畅的视频！
        vision.show_img(self.window_name, img_debug, wait_ms=30)
        return None, None

    def detect_slot(self, target_color):
        img_undistort, img = self.get_workspace_image(self.workspace_slots)
        
        if img is None:
            vision.show_img(self.window_name, img_undistort, wait_ms=30)
            return None

        hsv = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)
        lower, upper = COLOR_THRESHOLDS_SLOT[target_color]
        mask = cv2.inRange(hsv, tuple(lower), tuple(upper))
        mask = vision.morphological_transformations(
            mask, morpho_type=vision.MorphoType.OPEN,
            kernel_shape=(5,5), kernel_type=vision.KernelType.ELLIPSE
        )

        img_debug = img.copy()

        contour = vision.biggest_contour_finder(mask)
        if contour is None or len(contour) == 0:
            vision.show_img(self.window_name, img_debug, wait_ms=30)
            return None

        try:
            cx, cy = vision.get_contour_barycenter(contour)
        except:
            vision.show_img(self.window_name, img_debug, wait_ms=30)
            return None

        angle2 = vision.get_contour_angle(contour)
        if target_color == "YELLOW":
            angle2 = 0

        # --- 核心：在同一窗口叠加轮廓和角度 ---
        img_debug = vision.draw_contours(img_debug, [contour])
        img_debug = vision.draw_barycenter(img_debug, cx, cy)
        img_debug = vision.draw_angle(img_debug, cx, cy, angle2)
        
        vision.show_img(self.window_name, img_debug, wait_ms=30)

        x_rel, y_rel = vision.relative_pos_from_pixels(img, cx, cy)
        pose = self.robot.get_target_pose_from_rel(
            self.workspace_slots,
            height_offset=0.03,
            x_rel=x_rel, y_rel=y_rel, yaw_rel=angle2
        )
        return pose