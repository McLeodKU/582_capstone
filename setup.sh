#!/bin/bash
/usr/bin/tmux new-session -s "Car" -d
/usr/bin/tmux split-window -h
sleep 1 && /usr/bin/tmux send-keys -t "Car:0.1" "source ~/deepracer_ws/aws-deepracer-follow-the-leader-sample-project/deepracer_follow_the_leader_ws/install/setup.bash" ENTER
sleep 1 && /usr/bin/tmux send-keys -t "Car:0.1" "systemctl stop deepracer-core" ENTER
sleep 1 && /usr/bin/tmux send-keys -t "Car:0.1" "ros2 launch ftl_launcher ftl_launcher.py" ENTER
