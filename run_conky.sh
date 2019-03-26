#!/bin/sh -e

is_reload="$1"

[ "${is_reload}" == "reload" ] && killall conky

conky >>${TMP}/conky.log 2>&1 &
