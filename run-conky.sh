#!/bin/bash
# Simple script for running conky with reloading support
# Author: Alexander Makeenkov <whoami.tut@gmail.com>

[ "$1" == "reload" ] && killall conky

conky --debug >>${TMP}/conky.log 2>&1 &

