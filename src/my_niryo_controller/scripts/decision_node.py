import time
import cv2
from pyniryo import PoseObject
from execution_node import ExecutionNode
from perception_node import PerceptionNode

def main():
    # 1. 预设参数与点位
    ROBOT_IP = '10.10.10.10'
    WORKSPACE_PIECES = "Workspace_pieces"
    WORKSPACE_SLOTS = "Workspace_slots"
    
    pickup_observation_pose = PoseObject(0.2, 0.0, 0.25, 0.0, 1.80, 0.0)
    board_observation_pose = PoseObject(0.0, 0.2, 0.25, 0.0, 1.80, 1.57)

    # 2. 实例化执行节点与感知节点
    print("Connecting to robot...")
    exec_node = ExecutionNode(ROBOT_IP)
    
    # 将底层的 robot 实例传给感知节点，以便读取相机数据
    perc_node = PerceptionNode(exec_node.robot, WORKSPACE_PIECES, WORKSPACE_SLOTS)

    # 3. 决策状态机（主循环）
    try:
        while True:
            # 去往观察区
            exec_node.move(pickup_observation_pose)
            
            # 执行识别
            color, obj_pose = perc_node.detect_piece()

            if obj_pose is None:
                print("No piece detected. Retrying...")
                time.sleep(1)
                continue

            print(f"Decision: Picking up {color} piece.")
            exec_node.pick(obj_pose)

            # 移动到拼图板上方观察
            exec_node.move(board_observation_pose)
            time.sleep(0.3)

            # 寻找对应的凹槽
            slot_pose = perc_node.detect_slot(color)

            if slot_pose is None:
                print("Decision: Slot not found. Returning piece to original position.")
                exec_node.move(obj_pose)
                time.sleep(0.2)
                exec_node.release_tool()
                continue

            # 放置拼图
            print(f"Decision: Placing {color} piece into slot.")
            exec_node.place(slot_pose)

            # OpenCV 中断逻辑
            key = cv2.waitKey(1)
            if key in [27, ord("q")]:
                break

    except KeyboardInterrupt:
        print("Process interrupted by user.")
    
    finally:
        # 4. 安全退出
        print("Closing connection...")
        exec_node.close()

if __name__ == "__main__":
    main()