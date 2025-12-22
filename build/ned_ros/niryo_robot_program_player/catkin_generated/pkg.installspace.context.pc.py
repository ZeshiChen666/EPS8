# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "actionlib_msgs;message_runtime;niryo_robot_msgs;niryo_robot_programs_manager_v2;roscpp;std_msgs;niryo_robot_database;dynamixel_sdk;common;end_effector_interface".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lniryo_robot_program_player".split(';') if "-lniryo_robot_program_player" != "" else []
PROJECT_NAME = "niryo_robot_program_player"
PROJECT_SPACE_DIR = "/home/user/catkin_ws/install"
PROJECT_VERSION = "5.5.0"
