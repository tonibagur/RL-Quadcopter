docker-compose exec ros /bin/bash
cd catwin_ws/

source "/opt/ros/$ROS_DISTRO/setup.bash"
catkin_make
source devel/setup.sh
cd /catwin_ws/src/RL-Quadcopter/quad_controller_rl/launch
roslaunch quad_controller_rl rl_controller.launch agent:=DDPG