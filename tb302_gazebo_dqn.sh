#! /bin/bash

#kill in TB3
ssh tb302@10.42.0.102 'killall -9 bash'
ssh tb302@10.42.0.102 'killall -9 bringup.sh'
ssh tb302@10.42.0.102 'killall -9 python'
ssh tb302@10.42.0.102 'killall -9 hlds_laser_publisher'
ssh tb302@10.42.0.102 'killall -9 turtlebot3_diagnostics'
ssh tb302@10.42.0.102 'killall -9 sshd'
ssh tb302@10.42.0.102 'killall -9 raspi_camera.sh'
ssh tb302@10.42.0.102 'killall -9 roslaunch'
ssh tb302@10.42.0.102 'killall -9 raspicam_node'

#Kill in LAPTOP
killall -9 ssh
killall -9 roslaunch
killall -9 rosout
killall -9 rosmaster

#source files
source /opt/ros/kinetic/setup.bash

source ~/catkin_ws/devel/setup.bash

roscore &

sleep 10

roslaunch turtlebot3_gazebo turtlebot3_stage_1.launch &

sleep 10

roslaunch turtlebot3_dqn turtlebot3_dqn_stage_1.launch

#kill in TB3
ssh tb302@10.42.0.102 'killall -9 bash'
ssh tb302@10.42.0.102 'killall -9 bringup.sh'
ssh tb302@10.42.0.102 'killall -9 python'
ssh tb302@10.42.0.102 'killall -9 hlds_laser_publisher'
ssh tb302@10.42.0.102 'killall -9 turtlebot3_diagnostics'
ssh tb302@10.42.0.102 'killall -9 sshd'
ssh tb302@10.42.0.102 'killall -9 raspi_camera.sh'
ssh tb302@10.42.0.102 'killall -9 roslaunch'
ssh tb302@10.42.0.102 'killall -9 raspicam_node'

#Kill in LAPTOP
killall -9 ssh
killall -9 roslaunch
killall -9 rosout
killall -9 rosmaster

echo "TB3_GAZEBO_COMPLETED!!!"
