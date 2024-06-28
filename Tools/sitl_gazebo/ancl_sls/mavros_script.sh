cd ~/PX4_SITL_664
source Tools/setup_gazebo.bash $(pwd) $(pwd)/build/px4_sitl_default
source /usr/share/gazebo-11/setup.bash
source $(pwd)/build/px4_sitl_default/build_gazebo/devel/setup.bash
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)/Tools/sitl_gazebo
roslaunch px4 mavros_posix_sitl_sls.launch
