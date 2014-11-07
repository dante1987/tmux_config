#!/bin/sh

tmux new-session -d -s hogarth

tmux new-window -t hogarth:1 -n 'Vim'
tmux new-window -t hogarth:2 -n 'cli'
tmux new-window -t hogarth:3 -n 'serv'
tmux new-window -t hogarth:4 -n 'celery'

tmux select-window -t hogarth:1
tmux attach -t hogarth
