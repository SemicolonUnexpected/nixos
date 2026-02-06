#!/usr/bin/env bash

declare options

if [[ $1 == "-r" ]]; then
    options=$(find ${@:2} -mindepth 1 -maxdepth 1)
elif [[ $# -gt 0 ]]; then
    options=$(printf "%s\n" "$@")
else
    exit 1
fi

selected=$(echo "$options" | fzf)

if [[ -z $selected ]]; then
    exit 0
fi

selected_name=$(basename "$selected" | tr . _)
tmux_running=$(pgrep tmux)

if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
    tmux new-session -s $selected_name -c $selected -n $selected_name
    exit 0
fi

if ! tmux has-session -t=$selected_name 2> /dev/null; then
    tmux new-session -ds $selected_name -c $selected -n $selected_name
fi

tmux switch-client -t $selected_name
