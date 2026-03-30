import time

class ExecutionNode:
    def __init__(self, robot):
        self.robot = robot

    def move_to(self, pose):
        self.robot.move(pose)

    def pick(self, pose):
        self.robot.pick(pose)

    def place(self, pose):
        self.robot.place(pose)

    def return_piece(self, original_pose):
        # 修正：还原单文件逻辑，使用 move 到达原位，而不是执行一次抓取动作
        self.robot.move(original_pose)
        time.sleep(0.2)
        self.robot.release_with_tool()