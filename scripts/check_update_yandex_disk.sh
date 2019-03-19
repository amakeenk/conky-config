#!/bin/sh -e

last_rpm=$(curl -s https://repo.yandex.ru/yandex-disk/rpm/stable/x86_64/ | grep yandex-disk | grep "\.rpm" | cut -d">" -f2 | cut -d"<" -f1)
last_vers=$(echo ${last_rpm} | cut -d"-" -f3)
current_vers=$(rpm -qi yandex-disk | grep Version | tr -d [:alpha:]":"" ""()")
[ "${last_vers}" == "${current_vers}" ] && echo "None" || echo "Yes"