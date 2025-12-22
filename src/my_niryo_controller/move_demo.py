from pyniryo import *

robot = NiryoRobot("127.0.0.1")

robot.calibrate_auto()
robot.move_to_home_pose()

pose = PoseObject(
    x=0.25,
    y=0.0,
    z=0.15,
    roll=0.0,
    pitch=3.14,
    yaw=0.0
)

robot.move_pose(pose)
print("success")
robot.close_connection()
