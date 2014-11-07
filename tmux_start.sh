#!/bin/sh

tmux new-session -d -s project_name

tmux new-window -t project_name:1 -n 'Vim'
tmux new-window -t project_name:2 -n 'cli'
tmux new-window -t project_name:3 -n 'serv'
tmux new-window -t project_name:4 -n 'celery'

tmux select-window -t project_name:1
tmux attach -t project_name
