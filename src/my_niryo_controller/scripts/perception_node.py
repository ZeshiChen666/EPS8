import cv2
from pyniryo import vision

class PerceptionNode:
    def __init__(self, robot, workspace_pieces, workspace_slots):
        # 传入 robot 实例是为了获取相机数据和调用坐标系转换函数
        self.robot = robot
        self.workspace_pieces = workspace_pieces
        self.workspace_slots = workspace_slots
        
        # 颜色阈值配置
        self.COLOR_THRESHOLDS_PIECE = {
            "RED": ([0, 80, 150], [15, 255, 255]),
            "ORANGE": ([16, 50, 150], [28, 200, 255]),
            "YELLOW": ([25, 40, 180], [45, 150, 255]),
            "GREEN": ([45, 50, 150], [75, 255, 255]),
            "BLUE": ([90, 150, 150], [120, 255, 255])
        }

        self.COLOR_THRESHOLDS_SLOT = {
            "RED": ([0, 100, 160], [7, 160, 210]),
            "ORANGE": ([9, 110, 160], [18, 160, 210]),
            "YELLOW": ([38, 70, 180], [45, 120, 230]),
            "GREEN": ([72, 90, 140], [80, 160, 190]),
            "BLUE": ([104, 200, 170], [112, 255, 220])
        }

    def get_workspace_image(self, workspace_name):
        mtx, dist = self.robot.get_camera_intrinsics()
        img_compressed = self.robot.get_img_compressed()
        img_raw = vision.uncompress_image(img_compressed)
        img_undistort = vision.undistort_image(img_raw, mtx, dist)

        img_workspace = vision.extract_img_workspace(img_undistort, 1.0)
        
        if img_workspace is None:
            print(f"Workspace markers not detected: {workspace_name}")
            return None
        return img_workspace

    def detect_piece(self):
        img = self.get_workspace_image(self.workspace_pieces)
        if img is None:
            return None, None

        hsv = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)

        for color, (lower, upper) in self.COLOR_THRESHOLDS_PIECE.items():
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
                angle = 0  # 三角形角度修正

            x_rel, y_rel = vision.relative_pos_from_pixels(img, cx, cy)
            print(f"Detected {color} piece at relative coords: {x_rel}, {y_rel}")

            pose = self.robot.get_target_pose_from_rel(
                self.workspace_pieces, height_offset=0.01,
                x_rel=x_rel, y_rel=y_rel, yaw_rel=angle
            )
            return color, pose

        print("No piece detected in any color")
        return None, None

    def detect_slot(self, target_color):
        img = self.get_workspace_image(self.workspace_slots)
        if img is None:
            return None

        hsv = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)
        lower, upper = self.COLOR_THRESHOLDS_SLOT[target_color]

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
            self.workspace_slots, height_offset=0.03,
            x_rel=x_rel, y_rel=y_rel, yaw_rel=angle2
        )
        return pose