#!/bin/sh -e

last_rpm=$(curl -s https://repo.yandex.ru/yandex-browser/rpm/beta/x86_64/ | grep yandex-browser-beta | grep rpm | cut -d">" -f2 | cut -d"<" -f1)
last_vers=$(echo ${last_rpm} | cut -d"-" -f4)
current_vers=$(rpm -qi yandex-browser-beta | grep Version | tr -d [:alpha:]":"" ")
[ "${last_vers}" == "${current_vers}" ] && echo "None" || echo "Yes"