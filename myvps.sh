#!/bin/sh

vps=example.org

case $1 in
start)
    tmux new-session -d -s vps "ssh -D1080 $vps"
    ;;
stop)
    tmux kill-session -t vps
    ;;
*)
    echo "usage $0 [start|stop]"
esac
