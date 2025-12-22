# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "niryo_robot_programs_manager_v2: 9 messages, 7 services")

set(MSG_I_FLAGS "-Iniryo_robot_programs_manager_v2:/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg;-Iniryo_robot_programs_manager_v2:/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(niryo_robot_programs_manager_v2_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/Program.msg" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager_v2" "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/Program.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/ProgramList.msg" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager_v2" "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/ProgramList.msg" "niryo_robot_programs_manager_v2/Program"
)

get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramAction.msg" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager_v2" "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramAction.msg" "niryo_robot_programs_manager_v2/ExecuteProgramGoal:niryo_robot_programs_manager_v2/ExecuteProgramActionFeedback:std_msgs/Header:niryo_robot_programs_manager_v2/ExecuteProgramActionGoal:niryo_robot_programs_manager_v2/ExecuteProgramActionResult:actionlib_msgs/GoalID:niryo_robot_programs_manager_v2/ExecuteProgramFeedback:actionlib_msgs/GoalStatus:niryo_robot_programs_manager_v2/ExecuteProgramResult"
)

get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionGoal.msg" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager_v2" "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionGoal.msg" "actionlib_msgs/GoalID:niryo_robot_programs_manager_v2/ExecuteProgramGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionResult.msg" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager_v2" "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionResult.msg" "actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus:niryo_robot_programs_manager_v2/ExecuteProgramResult"
)

get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionFeedback.msg" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager_v2" "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionFeedback.msg" "actionlib_msgs/GoalID:niryo_robot_programs_manager_v2/ExecuteProgramFeedback:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramGoal.msg" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager_v2" "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramGoal.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramResult.msg" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager_v2" "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramResult.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramFeedback.msg" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager_v2" "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramFeedback.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/CreateProgram.srv" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager_v2" "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/CreateProgram.srv" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/DeleteProgram.srv" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager_v2" "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/DeleteProgram.srv" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgram.srv" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager_v2" "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgram.srv" "niryo_robot_programs_manager_v2/Program"
)

get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgramAutorunInfos.srv" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager_v2" "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgramAutorunInfos.srv" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgramList.srv" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager_v2" "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgramList.srv" "niryo_robot_programs_manager_v2/Program"
)

get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/SetProgramAutorun.srv" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager_v2" "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/SetProgramAutorun.srv" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/UpdateProgram.srv" NAME_WE)
add_custom_target(_niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_robot_programs_manager_v2" "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/UpdateProgram.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/Program.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_cpp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/ProgramList.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/Program.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_cpp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramAction.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramGoal.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionGoal.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_cpp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_cpp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_cpp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_cpp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_cpp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_cpp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)

### Generating Services
_generate_srv_cpp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/CreateProgram.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_srv_cpp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/DeleteProgram.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_srv_cpp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgram.srv"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/Program.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_srv_cpp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgramAutorunInfos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_srv_cpp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgramList.srv"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/Program.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_srv_cpp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/SetProgramAutorun.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_srv_cpp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/UpdateProgram.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)

### Generating Module File
_generate_module_cpp(niryo_robot_programs_manager_v2
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager_v2
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(niryo_robot_programs_manager_v2_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages niryo_robot_programs_manager_v2_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/Program.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_cpp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/ProgramList.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_cpp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramAction.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_cpp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionGoal.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_cpp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionResult.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_cpp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_cpp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramGoal.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_cpp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramResult.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_cpp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_cpp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/CreateProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_cpp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/DeleteProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_cpp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_cpp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgramAutorunInfos.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_cpp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgramList.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_cpp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/SetProgramAutorun.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_cpp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/UpdateProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_cpp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_programs_manager_v2_gencpp)
add_dependencies(niryo_robot_programs_manager_v2_gencpp niryo_robot_programs_manager_v2_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_programs_manager_v2_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/Program.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_eus(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/ProgramList.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/Program.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_eus(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramAction.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramGoal.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionGoal.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_eus(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_eus(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_eus(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_eus(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_eus(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_eus(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager_v2
)

### Generating Services
_generate_srv_eus(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/CreateProgram.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_srv_eus(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/DeleteProgram.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_srv_eus(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgram.srv"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/Program.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_srv_eus(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgramAutorunInfos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_srv_eus(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgramList.srv"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/Program.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_srv_eus(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/SetProgramAutorun.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_srv_eus(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/UpdateProgram.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager_v2
)

### Generating Module File
_generate_module_eus(niryo_robot_programs_manager_v2
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager_v2
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(niryo_robot_programs_manager_v2_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages niryo_robot_programs_manager_v2_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/Program.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_eus _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/ProgramList.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_eus _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramAction.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_eus _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionGoal.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_eus _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionResult.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_eus _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_eus _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramGoal.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_eus _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramResult.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_eus _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_eus _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/CreateProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_eus _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/DeleteProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_eus _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_eus _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgramAutorunInfos.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_eus _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgramList.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_eus _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/SetProgramAutorun.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_eus _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/UpdateProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_eus _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_programs_manager_v2_geneus)
add_dependencies(niryo_robot_programs_manager_v2_geneus niryo_robot_programs_manager_v2_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_programs_manager_v2_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/Program.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_lisp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/ProgramList.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/Program.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_lisp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramAction.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramGoal.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionGoal.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_lisp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_lisp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_lisp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_lisp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_lisp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_lisp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)

### Generating Services
_generate_srv_lisp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/CreateProgram.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_srv_lisp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/DeleteProgram.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_srv_lisp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgram.srv"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/Program.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_srv_lisp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgramAutorunInfos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_srv_lisp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgramList.srv"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/Program.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_srv_lisp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/SetProgramAutorun.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_srv_lisp(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/UpdateProgram.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager_v2
)

### Generating Module File
_generate_module_lisp(niryo_robot_programs_manager_v2
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager_v2
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(niryo_robot_programs_manager_v2_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages niryo_robot_programs_manager_v2_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/Program.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_lisp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/ProgramList.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_lisp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramAction.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_lisp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionGoal.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_lisp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionResult.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_lisp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_lisp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramGoal.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_lisp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramResult.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_lisp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_lisp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/CreateProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_lisp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/DeleteProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_lisp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_lisp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgramAutorunInfos.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_lisp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgramList.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_lisp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/SetProgramAutorun.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_lisp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/UpdateProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_lisp _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_programs_manager_v2_genlisp)
add_dependencies(niryo_robot_programs_manager_v2_genlisp niryo_robot_programs_manager_v2_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_programs_manager_v2_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/Program.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_nodejs(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/ProgramList.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/Program.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_nodejs(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramAction.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramGoal.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionGoal.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_nodejs(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_nodejs(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_nodejs(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_nodejs(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_nodejs(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_nodejs(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager_v2
)

### Generating Services
_generate_srv_nodejs(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/CreateProgram.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_srv_nodejs(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/DeleteProgram.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_srv_nodejs(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgram.srv"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/Program.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_srv_nodejs(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgramAutorunInfos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_srv_nodejs(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgramList.srv"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/Program.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_srv_nodejs(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/SetProgramAutorun.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_srv_nodejs(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/UpdateProgram.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager_v2
)

### Generating Module File
_generate_module_nodejs(niryo_robot_programs_manager_v2
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager_v2
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(niryo_robot_programs_manager_v2_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages niryo_robot_programs_manager_v2_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/Program.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_nodejs _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/ProgramList.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_nodejs _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramAction.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_nodejs _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionGoal.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_nodejs _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionResult.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_nodejs _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_nodejs _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramGoal.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_nodejs _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramResult.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_nodejs _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_nodejs _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/CreateProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_nodejs _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/DeleteProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_nodejs _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_nodejs _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgramAutorunInfos.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_nodejs _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgramList.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_nodejs _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/SetProgramAutorun.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_nodejs _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/UpdateProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_nodejs _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_programs_manager_v2_gennodejs)
add_dependencies(niryo_robot_programs_manager_v2_gennodejs niryo_robot_programs_manager_v2_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_programs_manager_v2_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/Program.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_py(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/ProgramList.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/Program.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_py(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramAction.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramGoal.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionGoal.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_py(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_py(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_py(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_py(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_py(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_msg_py(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager_v2
)

### Generating Services
_generate_srv_py(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/CreateProgram.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_srv_py(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/DeleteProgram.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_srv_py(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgram.srv"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/Program.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_srv_py(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgramAutorunInfos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_srv_py(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgramList.srv"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/Program.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_srv_py(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/SetProgramAutorun.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager_v2
)
_generate_srv_py(niryo_robot_programs_manager_v2
  "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/UpdateProgram.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager_v2
)

### Generating Module File
_generate_module_py(niryo_robot_programs_manager_v2
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager_v2
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(niryo_robot_programs_manager_v2_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages niryo_robot_programs_manager_v2_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/Program.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_py _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/ProgramList.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_py _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramAction.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_py _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionGoal.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_py _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionResult.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_py _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_py _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramGoal.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_py _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramResult.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_py _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramFeedback.msg" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_py _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/CreateProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_py _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/DeleteProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_py _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_py _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgramAutorunInfos.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_py _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgramList.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_py _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/SetProgramAutorun.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_py _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/UpdateProgram.srv" NAME_WE)
add_dependencies(niryo_robot_programs_manager_v2_generate_messages_py _niryo_robot_programs_manager_v2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_robot_programs_manager_v2_genpy)
add_dependencies(niryo_robot_programs_manager_v2_genpy niryo_robot_programs_manager_v2_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_robot_programs_manager_v2_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager_v2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_robot_programs_manager_v2
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(niryo_robot_programs_manager_v2_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager_v2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_robot_programs_manager_v2
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(niryo_robot_programs_manager_v2_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager_v2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_robot_programs_manager_v2
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(niryo_robot_programs_manager_v2_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager_v2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_robot_programs_manager_v2
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(niryo_robot_programs_manager_v2_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager_v2)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager_v2\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager_v2
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager_v2
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_robot_programs_manager_v2/.+/__init__.pyc?$"
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(niryo_robot_programs_manager_v2_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
