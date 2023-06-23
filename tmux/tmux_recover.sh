#!/bin/sh

check=$(tmux ls |grep $1)

echo "${check}"

if [ -z "$check" ]; then
    tmux new -s $1
else
    tmux attach -t $1
fi
