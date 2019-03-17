#!/bin/sh -e

curl -s wttr.in/Obninsk0?lang=ru | head -7 | sed "1d"