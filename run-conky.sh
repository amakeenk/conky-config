#!/bin/bash
# Simple script for running conky with reloading support

[ "$1" == "reload" ] && killall conky

conky --daemonize &>/dev/null

if xrandr --listmonitors | grep 'Monitors: 2' >/dev/null; then
    conky --daemonize -x 1930 &>/dev/null
fi
