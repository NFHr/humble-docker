#!/bin/bash

# tools
apt-get install -y \
     vim \
     ros-dev-tools \
     python3-pip

# PlatformIO
apt-get install -y python3-venv
cd /home/"$USERNAME"/ || exit 1
wget -O get-platformio.py https://raw.githubusercontent.com/platformio/platformio-core-installer/master/get-platformio.py
python3 get-platformio.py
rm get-platformio.py

# ros packages
apt-get install -y \
    ros-"$ROS_DISTRO"-ros2-control \
    ros-"$ROS_DISTRO"-ros2-controllers \
    ros-"$ROS_DISTRO"-control-toolbox \
    ros-"$ROS_DISTRO"-realtime-tools \
    ros-"$ROS_DISTRO"-control-msgs \
    ros-"$ROS_DISTRO"-ros2-controllers-test-nodes \
    ros-"$ROS_DISTRO"-joint-state-publisher-gui \
    ros-"$ROS_DISTRO"-gazebo-ros-pkgs \
    ros-"$ROS_DISTRO"-gazebo-ros2-control
