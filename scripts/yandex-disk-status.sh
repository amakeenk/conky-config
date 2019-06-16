#!/bin/bash

used_str=$(yandex-disk status | grep Занято | cut -d":" -f2 | tr -d " ")
total_str=$(yandex-disk status | grep Всего | cut -d":" -f2 | tr -d " ")

used=$(yandex-disk status | grep Занято | cut -d":" -f2 | tr -d " ""GB")
total=$(yandex-disk status | grep Всего | cut -d":" -f2 | tr -d " ""GB")

used_percent=$(echo "$(echo "scale=2; ${used} * 100 / ${total}" | bc)" | awk '{printf("%d\n",$1 + 0.5)}')

echo "${used_str}/${total_str} - ${used_percent}%"