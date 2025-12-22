# Install script for directory: /home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/user/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_programs_manager_v2/msg" TYPE FILE FILES
    "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/Program.msg"
    "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/msg/ProgramList.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_programs_manager_v2/srv" TYPE FILE FILES
    "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/CreateProgram.srv"
    "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/DeleteProgram.srv"
    "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgram.srv"
    "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgramAutorunInfos.srv"
    "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/GetProgramList.srv"
    "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/SetProgramAutorun.srv"
    "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/srv/UpdateProgram.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_programs_manager_v2/action" TYPE FILE FILES "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/action/ExecuteProgram.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_programs_manager_v2/msg" TYPE FILE FILES
    "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramAction.msg"
    "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionGoal.msg"
    "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionResult.msg"
    "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramActionFeedback.msg"
    "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramGoal.msg"
    "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramResult.msg"
    "/home/user/catkin_ws/devel/share/niryo_robot_programs_manager_v2/msg/ExecuteProgramFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/user/catkin_ws/build/ned_ros/niryo_robot_programs_manager_v2/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_programs_manager_v2/cmake" TYPE FILE FILES "/home/user/catkin_ws/build/ned_ros/niryo_robot_programs_manager_v2/catkin_generated/installspace/niryo_robot_programs_manager_v2-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/user/catkin_ws/devel/include/niryo_robot_programs_manager_v2")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/user/catkin_ws/devel/share/roseus/ros/niryo_robot_programs_manager_v2")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/user/catkin_ws/devel/share/common-lisp/ros/niryo_robot_programs_manager_v2")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/user/catkin_ws/devel/share/gennodejs/ros/niryo_robot_programs_manager_v2")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/user/catkin_ws/devel/lib/python3/dist-packages/niryo_robot_programs_manager_v2")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/user/catkin_ws/devel/lib/python3/dist-packages/niryo_robot_programs_manager_v2" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/user/catkin_ws/devel/lib/python3/dist-packages/niryo_robot_programs_manager_v2" FILES_MATCHING REGEX "/home/user/catkin_ws/devel/lib/python3/dist-packages/niryo_robot_programs_manager_v2/.+/__init__.pyc?$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/user/catkin_ws/build/ned_ros/niryo_robot_programs_manager_v2/catkin_generated/installspace/niryo_robot_programs_manager_v2.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_programs_manager_v2/cmake" TYPE FILE FILES "/home/user/catkin_ws/build/ned_ros/niryo_robot_programs_manager_v2/catkin_generated/installspace/niryo_robot_programs_manager_v2-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_programs_manager_v2/cmake" TYPE FILE FILES
    "/home/user/catkin_ws/build/ned_ros/niryo_robot_programs_manager_v2/catkin_generated/installspace/niryo_robot_programs_manager_v2Config.cmake"
    "/home/user/catkin_ws/build/ned_ros/niryo_robot_programs_manager_v2/catkin_generated/installspace/niryo_robot_programs_manager_v2Config-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_programs_manager_v2" TYPE FILE FILES "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/niryo_robot_programs_manager_v2" TYPE PROGRAM FILES "/home/user/catkin_ws/build/ned_ros/niryo_robot_programs_manager_v2/catkin_generated/installspace/programs_manager_node.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_robot_programs_manager_v2/launch" TYPE DIRECTORY FILES "/home/user/catkin_ws/src/ned_ros/niryo_robot_programs_manager_v2/launch/")
endif()

