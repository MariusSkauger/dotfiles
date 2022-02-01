#!/bin/bash

while [ "$#" -gt 0 ]; do
    curr=$1
    shift

    case "$curr" in
    "-gen")
        tmux start-server
        tmux new-session -s gen -d
        tmux new-window -t gen: -n repos  
        tmux new-window -t gen: -n idk
        tmux new-window -t gen: -n idk2
        tmux select-window -t gen:1
        tmux attach-session -t gen
        ;;
    "-sndm")
        tmux start-server
        tmux new-session -s sndm -d
        tmux new-window -t sndm: -n repo
        tmux new-window -t sndm: -n idk
        tmux select-window -t sndm:1
        tmux attach-session -t sndm
        ;;
    "-tmd")
        tmux start-server
        tmux new-session -s tmd -d
        tmux new-window -t tmd: -n repo -d 'cd ~/repos/github/time-me-daddy'
        tmux new-window -t tmd: -n idk
        tmux select-window -t tmd:1
        tmux attach-session -t tmd
        ;;
    *) echo "Unavailable command.. $curr"
    esac
done
