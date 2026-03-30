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

    def get_workspace_image(self, workspace_name):
        mtx, dist = self.robot.get_camera_intrinsics()
        img_compressed = self.robot.get_img_compressed()
        img_raw = uncompress_image(img_compressed)
        img_undistort = undistort_image(img_raw, mtx, dist)

        # 还原原始的 show_img 显示
        show_img("camera_raw", img_undistort, wait_ms=1)

        img_workspace = vision.extract_img_workspace(img_undistort, 1.0)

        if img_workspace is None:
            print("Workspace markers not detected:", workspace_name)
            return None
        return img_workspace

    def detect_piece(self):
        img = self.get_workspace_image(self.workspace_pieces)
        if img is None:
            return None, None

        hsv = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)

        for color, (lower, upper) in COLOR_THRESHOLDS_PIECE.items():
            print("Trying color:", color)
            mask = cv2.inRange(hsv, tuple(lower), tuple(upper))
            mask = vision.morphological_transformations(
                mask, morpho_type=vision.MorphoType.ERODE,
                kernel_shape=(5,5), kernel_type=vision.KernelType.ELLIPSE
            )

            contour = vision.biggest_contour_finder(mask)
            # 补回缺失的 len 校验
            if contour is None or len(contour) == 0:
                continue

            try:
                cx, cy = vision.get_contour_barycenter(contour)
            except:
                continue

            angle = vision.get_contour_angle(contour)
            if color == "YELLOW":
                angle = 0  # 先试 +90°

            x_rel, y_rel = vision.relative_pos_from_pixels(img, cx, cy)
            print("Detected", color, "at", x_rel, y_rel)

            # 在感知节点直接生成 PoseObject，与原版保持一致
            pose = self.robot.get_target_pose_from_rel(
                self.workspace_pieces,
                height_offset=0.01,
                x_rel=x_rel,
                y_rel=y_rel,
                yaw_rel=angle
            )
            return color, pose

        print("No piece detected in any color")
        return None, None

    def detect_slot(self, target_color):
        img = self.get_workspace_image(self.workspace_slots)
        if img is None:
            return None

        hsv = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)
        lower, upper = COLOR_THRESHOLDS_SLOT[target_color]
        mask = cv2.inRange(hsv, tuple(lower), tuple(upper))
        mask = vision.morphological_transformations(
            mask, morpho_type=vision.MorphoType.OPEN,
            kernel_shape=(5,5), kernel_type=vision.KernelType.ELLIPSE
        )

        contour = vision.biggest_contour_finder(mask)
        if contour is None or len(contour) == 0:
            return None

        try:
            cx, cy = vision.get_contour_barycenter(contour)
        except:
            return None

        x_rel, y_rel = vision.relative_pos_from_pixels(img, cx, cy)
        angle2 = vision.get_contour_angle(contour)

        if target_color == "YELLOW":
            angle2 = 0

        pose = self.robot.get_target_pose_from_rel(
            self.workspace_slots,
            height_offset=0.03,
            x_rel=x_rel,
            y_rel=y_rel,
            yaw_rel=angle2
        )

        print(x_rel)
        print(y_rel)
        return pose