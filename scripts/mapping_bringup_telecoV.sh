#!/bin/bash
session="telecoV_mapping"
mapping_window_name="bring_up_mapping"
tmux new-session -d -s $session -n $mapping_window_name;
tmux split-window -v
tmux split-window -h
tmux split-window -v
tmux split-window -v
tmux send-keys -t $session:$mapping_window_name.0 "roslaunch telecoV bringup_telecov.launch" Enter
sleep 5
tmux send-keys -t $session:$mapping_window_name.1 "rosrun telecoV pub_diff_odom" Enter
tmux send-keys -t $session:$mapping_window_name.2 "roslaunch telecoV mapper_online_async.launch" Enter
tmux send-keys -t $session:$mapping_window_name.3 "rviz -d ~/catkin_ws/src/teleco_ros/rviz/slam_toolbox.rviz" Enter
tmux send-keys -t $session:$mapping_window_name.4 "echo 'When you save a map:   rosrun map_server map_saver -f MAP_NAME'" Enter
tmux attach -t "$session:$mapping_window_name"
