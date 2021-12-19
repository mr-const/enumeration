#!/bin/bash

REMOTE_HOSTNAME=$1

SESSION=enum

tmux start-server

tmux new-session -d -s ${SESSION} -n nmap # start nmap pane
tmux send-keys "bash run-nmap.sh ${REMOTE_HOSTNAME}" C-m

tmux splitw -h
tmux send-keys "bash run-dirscan.sh ${REMOTE_HOSTNAME}" C-m

tmux splitw -v
tmux send-keys "bash run-vhostscan.sh ${REMOTE_HOSTNAME}" C-m

tmux attach-session -t ${SESSION}
