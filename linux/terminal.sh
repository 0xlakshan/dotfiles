#!/bin/bash

SESSION_NAME="lakshan-tmux-session"
DIR="$HOME/projects"

if [ -n "$TMUX" ]; then
  echo "Already inside tmux. Detach first."
  exit 1
fi

tmux kill-session -t $SESSION_NAME 2>/dev/null

tmux new-session -d -s $SESSION_NAME
tmux send-keys -t $SESSION_NAME:0.0 '
    git_branch() { 
        git branch 2>/dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/(\1)/"; 
    }
' C-m
tmux send-keys -t $SESSION_NAME:0.0 'export PS1="\w \$(git_branch)\n\[\033[38;5;208m\]λ\[\033[0m\] "' C-m
tmux send-keys -t $SESSION_NAME:0.0 "cd $DIR" C-m
tmux send-keys -t $SESSION_NAME:0.0 "clear" C-m
tmux send-keys -t $SESSION_NAME:0.0 "neofetch" C-m

tmux split-window -h -t $SESSION_NAME:0.0
tmux send-keys -t $SESSION_NAME:0.1 '
    git_branch() { 
        git branch 2>/dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/(\1)/"; 
    }
' C-m
tmux send-keys -t $SESSION_NAME:0.1 'export PS1="\w \$(git_branch)\n\[\033[38;5;208m\]λ\[\033[0m\] "' C-m
tmux send-keys -t $SESSION_NAME:0.1 "cd $DIR" C-m
tmux send-keys -t $SESSION_NAME:0.1 "clear" C-m

tmux split-window -v -t $SESSION_NAME:0.1
tmux send-keys -t $SESSION_NAME:0.2 '
    git_branch() {
        git branch 2>/dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/(\1)/"; 
    }
' C-m
tmux send-keys -t $SESSION_NAME:0.2 'export PS1="\w \$(git_branch)\n\[\033[38;5;208m\]λ\[\033[0m\] "' C-m
tmux send-keys -t $SESSION_NAME:0.2 "clear" C-m
tmux send-keys -t $SESSION_NAME:0.2 'htop' C-m
tmux attach -t $SESSION_NAME
