from pyniryo import *
import cv2

# Color threshold
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
        # Define a consistent window name to prevent infinite pop-ups.
        self.window_name = "Robot Vision Stream"

    def get_workspace_image(self, workspace_name):
        mtx, dist = self.robot.get_camera_intrinsics()
        img_compressed = self.robot.get_img_compressed()
        img_raw = uncompress_image(img_compressed)
        # Acquiring non-destructive corrected images
        img_undistort = undistort_image(img_raw, mtx, dist)

        img_workspace = vision.extract_img_workspace(img_undistort, 1.0)
        
        # Returns both the complete corrected image and the workspace image.
        return img_undistort, img_workspace

    def detect_piece(self):
        img_undistort, img = self.get_workspace_image(self.workspace_pieces)
        
        # If the workspace cannot be found, display a panoramic, lossless camera view to prevent the video stream from freezing.
        if img is None:
            vision.show_img(self.window_name, img_undistort, wait_ms=30)
            return None, None

        hsv = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)
        img_debug = img.copy() 

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

            # Overlay contours and angles in the same window.
            img_debug = vision.draw_contours(img_debug, [contour])
            img_debug = vision.draw_barycenter(img_debug, cx, cy)
            img_debug = vision.draw_angle(img_debug, cx, cy, angle)
            
            # Show image.
            vision.show_img(self.window_name, img_debug, wait_ms=30)
            
            x_rel, y_rel = vision.relative_pos_from_pixels(img, cx, cy)
            pose = self.robot.get_target_pose_from_rel(
                self.workspace_pieces,
                height_offset=0.01,
                x_rel=x_rel, y_rel=y_rel, yaw_rel=angle
            )
            return color, pose

        # If no color is found, refresh the window.
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

        # Overlay contours and angles in the same window.
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