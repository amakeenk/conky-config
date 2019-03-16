#!/bin/sh -e

conky -c $(pwd)/conky.conf >/dev/null 2>&1 &
