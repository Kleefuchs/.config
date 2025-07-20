#!/bin/bash

if [[ -n $(pgrep tmux) ]]; then
    echo "$(tmux ls)"
else
    echo "No tmux session is running"
fi

read -p "Enter session you want to enter or enter .create to create a new one: " input

if [ "$input" = ".create" ]; then
    read -p "Enter new session values: " session_values
    tmux new $session_values
else
    tmux attach -t $input
fi
