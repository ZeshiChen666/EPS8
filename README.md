# EPS8 – Niryo Ned2 Project

## Introduction
This work presents an autonomous robotic system using the Niryo Ned2 for puzzle assembly. Leveraging the official Niryo tools, the system integrates computer vision, decision-making, and motion control to detect colored pieces and perform accurate pick-and-place operations. A modular perception–decision–execution architecture enables the robot to first grasp puzzle pieces in one workspace and then assemble them onto a base in another workspace, allowing reliable puzzle assembly in a dual-workspace setup.

## Environment
- Ubuntu 20.04
- ROS Noetic

## Setup
### 1. install ned_ros and pyniryo

**ned_ros:**  
[github]https://github.com/NiryoRobotics/ned_ros.git
  
**pyniryo:** 
```bash
pip install pyniryo
```
**moveit**
```bash
sudo apt update
sudo apt install ros-noetic-moveit
sudo apt update
sudo apt install ros-noetic-ros-control ros-noetic-ros-controllers ros-noetic-gazebo-ros-control
pip3 install gTTS
# 注意：rpi_ws281x 在虚拟机里通常用不到，但为了不让它报错，可以尝试安装：
pip3 install rpi_ws281x
sudo apt install ffmpeg
sudo apt install ros-noetic-tf2-web-republisher
```

### 2. open simulation
```bash
git clone --recurse-submodules ...
catkin_make
source devel/setup.bash 
roslaunch niryo_robot_bringup desktop_gazebo_simulation.launch hardware_version:=ned2
source devel/setup.bash 
roslaunch my_niryo_controller task_control.launch
```

### 3. Three main modules
(a)Perception Node:
The perception module extracts each workspace and detects objects using HSV color segmentation and contour analysis to estimate their position and orientation.

(b)Decision Node:
The decision module performs color-based matching between the detected piece and the corresponding slot.

(c)Execution Node:
The execution module then commands the Niryo Ned2 to pick the piece from the pieces workspace and place it into the matched slot in the second workspace.



