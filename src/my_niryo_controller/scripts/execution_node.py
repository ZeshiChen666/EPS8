from pyniryo import NiryoRobot

class ExecutionNode:
    def __init__(self, robot_ip):
        self.robot = NiryoRobot(robot_ip)
        self._initialize_robot()

    def _initialize_robot(self):
        """系统初始化及安全检查"""
        if self.robot.collision_detected:
            self.robot.clear_collision_detected()
        self.robot.calibrate_auto()
        self.robot.update_tool()
        self.robot.open_gripper()
        print("Robot initialization complete.")

    def move(self, pose):
        self.robot.move(pose)

    def pick(self, pose):
        self.robot.pick(pose)

    def place(self, pose):
        self.robot.place(pose)

    def release_tool(self):
        self.robot.release_with_tool()

    def close(self):
        self.robot.close_connection()