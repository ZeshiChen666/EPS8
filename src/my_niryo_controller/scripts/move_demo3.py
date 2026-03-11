from pyniryo import *
import time

# -----------------------------------------------------------------------------
# -----------------------------------------------------------------------------
COLOR_THRESHOLDS = {

    "RED": ([0, 80, 150], [15, 255, 255]),

    "ORANFE": ([16, 50, 150], [28, 200, 255]),

    "YELLOW": ([29, 0, 180], [42, 60, 255]),

    "GREEN":  ([45, 50, 150], [75, 255, 255]),

    "BLUE":   ([90, 150, 150], [120, 255, 255])
}

# ---------------------------
# 获取workspace图像
# ---------------------------

def get_workspace_image():
    mtx, dist = robot.get_camera_intrinsics()
    img_compressed = robot.get_img_compressed()
    img_raw = uncompress_image(img_compressed)
    img_undistort = undistort_image(img_raw, mtx, dist)
    # - Display
    # Concatenating raw image and undistorted image
    concat_ims = concat_imgs((img_raw, img_undistort))
    # Showing images
    show_img("Images raw & undistorted", concat_ims, wait_ms=30)
    # workspace_ratio = 1.0 (正方形workspace)
    img_workspace = vision.extract_img_workspace(img_undistort, 1.0)

    if img_workspace is None:
        print("Workspace markers not detected")
        return None

    return img_workspace


# ---------------------------
# 识别拼图块
# ---------------------------

def detect_piece():

    robot.move(pickup_observation_pose)

    img = get_workspace_image()

    if img is None:
        return None, None

    hsv = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)

    for color, (lower, upper) in COLOR_THRESHOLDS.items():

        print("Trying color:", color)

        mask = cv2.inRange(hsv, tuple(lower), tuple(upper))

        mask = vision.morphological_transformations(
            mask,
            morpho_type=vision.MorphoType.OPEN,
            kernel_shape=(5,5),
            kernel_type=vision.KernelType.ELLIPSE
        )

        # 显示mask用于调试
        show_img(color + "_mask", mask, wait_ms=30)

        contour = vision.biggest_contour_finder(mask)

        if contour is None:
            print(color, "no contour")
            continue

        # 防止OpenCV moments报错
        if len(contour) == 0:
            print(color, "empty contour")
            continue

        try:
            cx, cy = vision.get_contour_barycenter(contour)
        except Exception as e:
            print("Contour error:", e)
            continue

        angle = vision.get_contour_angle(contour)

        x_rel, y_rel = vision.relative_pos_from_pixels(img, cx, cy)

        print("Detected", color, "at", x_rel, y_rel)

        pose = robot.get_target_pose_from_rel(
            workspace_pieces,
            height_offset=0.0,
            x_rel=x_rel,
            y_rel=y_rel,
            yaw_rel=angle
        )

        return color, pose

    print("No piece detected in any color")

    return None, None


# ---------------------------
# 识别凹槽
# ---------------------------

def detect_slot(target_color):
    robot.move(board_observation_pose)
    img = get_workspace_image()
    if img is None:
        return None

    hsv = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)
    lower, upper = COLOR_THRESHOLDS[target_color]
    mask = cv2.inRange(hsv, tuple(lower), tuple(upper))
    mask = vision.morphological_transformations(
        mask,
        morpho_type=vision.MorphoType.OPEN,
        kernel_shape=(9,9),
        kernel_type=vision.KernelType.ELLIPSE
    )

    contour = vision.biggest_contour_finder(mask)
    if contour is None:
        return None

    cx, cy = vision.get_contour_barycenter(contour)
    x_rel, y_rel = vision.relative_pos_from_pixels(img, cx, cy)
    pose = robot.get_target_pose_from_rel(
        workspace_board,
        height_offset=0.0,
        x_rel=x_rel,
        y_rel=y_rel
    )

    return pose


# ---------------------------
# 主程序
# ---------------------------

if __name__ == "__main__":

    pickup_observation_pose = PoseObject(0.15, 0.0, 0.25, 0.0, 1.57, 0.0)
    board_observation_pose = PoseObject(0.0, 0.2, 0.25, 0.0, 1.57, 1.57)

    robot_ip_address = '10.10.10.10'
    workspace_pieces = "Station 4.3"
    workspace_board = "Workspace_Board"
    robot = NiryoRobot(robot_ip_address)  # Connect to robot

    # Clear collision if detected during a previous movement
    if robot.collision_detected:
        robot.clear_collision_detected()

    robot.calibrate_auto()  # Calibrate robot if the robot needs calibration
    robot.update_tool()  # Updating tool
    robot.open_gripper()

    #sensor_pin_id = 'DIS'  # Setting variables
    #conveyor_id = robot.set_conveyor()  # Activating connexion with the Conveyor Belt

    # --- YOUR CODE ---
    
    # Getting calibration param
    mtx, dist = robot.get_camera_intrinsics()

    while True:

        # Step1 找拼图块
        #robot.move(pickup_observation_pose)

        color, obj_pose = detect_piece()

        if obj_pose is None:

            print("No piece detected")

            continue

        print("Piece detected:", color)

        # Step2 抓取
        robot.pick(obj_pose)

        # Step3 找凹槽
        #robot.move(board_observation_pose)

        slot_pose = detect_slot(color)

        if slot_pose is None:

            print("Slot not found")

            robot.release_with_tool()

            continue

        print("Placing piece:", color)

        # Step4 放置
        robot.place(slot_pose)

        if key in [27, ord("q")]:  # Will break loop if the user press Escape or Q
            break

    #robot.unset_conveyor(conveyor_id)  # Deactivating connexion with the Conveyor Belt
    robot.close_connection()