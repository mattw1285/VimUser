#!/bin/bash

SESSION="code"
START_DIR=$(realpath "${1:-.}")

if tmux has-session -t $SESSION 2>/dev/null; then
    echo "Tmux session '$SESSION' already exists"
else
    tmux new-session -s $SESSION -d -c "$START_DIR" "bash"
    tmux split-window -h -t $SESSION:0 -c "$START_DIR" "bash"
    tmux resize-pane -t $SESSION:0.0 -x 50%
    tmux select-pane -t $SESSION:0.0
    MSG="\033[1;31mWARNING:\033[0m This has started a tmux session! 

        Please kill the session if you wish to exit fully.
        I have the bash alias 'tk' setup to do so.
        You are of course free to simply detach if it suits better.
    "
    tmux send-keys -t $SESSION:0.1 "clear; printf '$MSG'" C-m; \
    sleep 0.2
    CMD=" \
        sleep 0.1; \
        tmux send-keys -t $SESSION:0.0 vim C-m; \
        tmux set-hook -u $SESSION client-attached \ 
    "
    tmux set-hook -t $SESSION client-attached "run-shell '$CMD'"
    tmux attach -t $SESSION
fi
