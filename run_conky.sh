#!/bin/sh -e

conky -c conky.conf >>${TMP}/conky.log 2>&1 &
