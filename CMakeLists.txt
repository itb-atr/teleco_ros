cmake_minimum_required(VERSION 3.0.2)

project(teleco_ros)
find_package(catkin REQUIRED COMPONENTS
  rospy
  geometry_msgs
  sensor_msgs
  std_msgs
  tf
  tf2
)

###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## INCLUDE_DIRS: uncomment this if your package contains header files
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
  # INCLUDE_DIRS include
  # LIBRARIES telecoV
  CATKIN_DEPENDS geometry_msgs rospy sensor_msgs std_msgs tf tf2
  # DEPENDS 
)
