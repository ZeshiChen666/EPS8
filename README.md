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
source devel/setup.bash 
roslaunch my_niryo_controller task_control.launch
```

### 3. Three main modules
视觉模块：识别不同颜色的拼图，并且确定拼图和目标位置

决策模块：根据拼图的位置和目标位置判断下一步机械臂该如何移动

控制模块：根据决策控制机械臂移动

**(1) perception.py**:
通过使机械爪转动135度解决了遮挡摄像头的问题。


