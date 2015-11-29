#!/bin/sh

tmux new-session -d -s carrot

tmux split-window -h

tmux select-pane -t 0
tmux send-keys "rabbitmq-server" C-m

tmux select-pane -t 1
tmux send-keys "sleep 5; cd ~/praca/sunscrapers/projects/legalsense/online_project/development/; workon legalsense; PYTHONPATH=. python ~/praca/sunscrapers/projects/legalsense/online_apps/carrot/worker.py carrot_project_settings local_settings" C-m
