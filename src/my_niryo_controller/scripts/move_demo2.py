#!/usr/bin/env python3
import rospy
from niryo_robot_python_ros_wrapper.ros_wrapper import NiryoRosWrapper
from niryo_robot_utils.dataclasses.Pose import Pose
from niryo_robot_utils.dataclasses.PoseMetadata import PoseMetadata

def main():
    rospy.init_node("niryo_cartesian_move_only", anonymous=True)
    robot = NiryoRosWrapper()
    rospy.loginfo("Niryo ROS Wrapper connected")

    # 安全姿态（可选）
    try:
        robot.move_to_sleep_pose()
    except Exception as e:
        rospy.logwarn(f"move_to_sleep_pose failed (ignored): {e}")

    # 末端位姿：x,y,z (m) + r,p,y (rad)
    targets = [
        Pose(0.25,  0.00, 0.25, 0.0, 1.57, 0.0, metadata=PoseMetadata.v1()),
        Pose(0.22,  0.10, 0.22, 0.0, 1.57, 0.3, metadata=PoseMetadata.v1()),
        Pose(0.22, -0.10, 0.22, 0.0, 1.57, -0.3, metadata=PoseMetadata.v1()),
        Pose(0.25,  0.00, 0.25, 0.0, 1.57, 0.0, metadata=PoseMetadata.v1()),
    ]

    for i, p in enumerate(targets):
        rospy.loginfo(f"Moving to pose {i}: ({p.x:.2f},{p.y:.2f},{p.z:.2f}) rpy=({p.roll:.2f},{p.pitch:.2f},{p.yaw:.2f})")
        robot.move(p)

    rospy.loginfo("Done.")

if __name__ == "__main__":
    main()
