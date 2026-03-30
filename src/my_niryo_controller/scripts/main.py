from pyniryo import *
import time
import cv2

from perception_node import PerceptionNode
from decision_node import DecisionNode
from execution_node import ExecutionNode

if __name__ == "__main__":
    pickup_observation_pose = PoseObject(0.2, 0.0, 0.25, 0.0, 1.80, 0.0)
    board_observation_pose = PoseObject(0.0, 0.2, 0.25, 0.0, 1.80, 1.57)

    robot_ip_address = '10.10.10.10'
    workspace_pieces = "Workspace_pieces"
    workspace_slots = "Workspace_slots"
    
    robot = NiryoRobot(robot_ip_address)

    if robot.collision_detected:
        robot.clear_collision_detected()

    robot.calibrate_auto()
    robot.update_tool()
    robot.open_gripper()

    # 初始化节点
    perception = PerceptionNode(robot, workspace_pieces, workspace_slots)
    decision = DecisionNode()
    execution = ExecutionNode(robot)

    while True:
        # --------- 1. 移动到观察区并识别拼图 ----------
        execution.move_to(pickup_observation_pose)
        color, piece_pose = perception.detect_piece()

        # --------- 2. 决策与抓取 ----------
        if decision.decide_pickup(piece_pose) == "IGNORE":
            print("No piece detected")
            continue

        print("Piece detected:", color)
        execution.pick(piece_pose)

        # --------- 3. 移动到放置区并识别凹槽 ----------
        execution.move_to(board_observation_pose)
        time.sleep(0.3)
        slot_pose = perception.detect_slot(color)

        # --------- 4. 决策与放置/退回 ----------
        action = decision.decide_placement(slot_pose)

        if action == "RETURN_PIECE":
            print("Slot not found, returning piece to original pickup position")
            execution.return_piece(piece_pose)
            continue
            
        elif action == "PLACE_PIECE":
            print("Placing piece:", color)
            execution.place(slot_pose)

        # 还原原代码的键盘检测，避免卡死
        key = cv2.waitKey(1)
        if key in [27, ord("q")]:
            break

    robot.close_connection()