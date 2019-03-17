#!/bin/sh -e

[ $(apt-indicator-checker | sed "1,4d" | wc -l) -ne 0 ] && echo "Yes" || echo "None"
