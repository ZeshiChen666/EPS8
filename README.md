# EPS8 – Niryo Ned2 Project

## Introduction
项目简介一句话。

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

### 2. open simulation
```bash
git clone --recurse-submodules ...
catkin_make
source devel/setup.bash 
roslaunch niryo_robot_bringup desktop_gazebo_simulation.launch hardware_version:=ned2
```
