#!/bin/sh -e

last_rpm=$(curl -s https://repo.yandex.ru/yandex-disk/rpm/stable/x86_64/ | grep yandex-disk | grep "\.rpm" | cut -d">" -f2 | cut -d"<" -f1)
last_vers=$(echo ${last_rpm} | cut -d"-" -f3)
current_vers=$(rpm -q yandex-disk --qf '%{VERSION}')
[ "${last_vers}" == "${current_vers}" ] && echo "None [Current version: ${current_vers}]" || echo "Yes [New Version: ${last_vers}]"