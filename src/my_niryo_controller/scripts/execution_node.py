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

    # Return to original location if placement fails.
    def return_piece(self, original_pose):
        self.robot.move(original_pose)
        time.sleep(0.2)
        self.robot.release_with_tool()