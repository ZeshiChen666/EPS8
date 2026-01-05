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
```
