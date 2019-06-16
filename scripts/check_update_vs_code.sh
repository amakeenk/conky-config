#!/bin/bash

last_rpm=$(curl -s https://packages.microsoft.com/yumrepos/vscode/ | grep href | grep rpm | cut -d">" -f2 | cut -d"<" -f1 | egrep -v "(code-1.9.1-1486597190.el7.x86_64.rpm|test)" | tail -1)
last_vers=$(echo ${last_rpm} | cut -d"-" -f2)
current_vers=$(rpm -q code --qf '%{VERSION}')
[ "${last_vers}" == "${current_vers}" ] && echo "None [Current version: ${current_vers}]" || echo "Yes [New Version: ${last_vers}]"