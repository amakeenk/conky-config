#!/bin/bash
# Simple script for running conky with reloading support

[ "$1" == "reload" ] && killall conky
conky --daemonize &>/dev/null
