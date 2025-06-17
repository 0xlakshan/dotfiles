#!/bin/bash

SESSION_NAME="lakshan-tmux-session"
DIR="$HOME/projects"

tmux new-session -d -s $SESSION_NAME
tmux send-keys -t $SESSION_NAME:0.0 "cd $DIR" C-m
tmux send-keys -t $SESSION_NAME:0.0 "clear" C-m
tmux send-keys -t $SESSION_NAME:0.0 "neofetch" C-m
tmux split-window -h -t $SESSION_NAME:0.0
tmux send-keys -t $SESSION_NAME:0.1 "cd $DIR" C-m
tmux send-keys -t $SESSION_NAME:0.1 "clear" C-m
tmux split-window -v -t $SESSION_NAME:0.1
tmux send-keys -t $SESSION_NAME:0.2 'cmatrix' C-m
tmux attach-session -t $SESSION_NAME