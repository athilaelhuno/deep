#!/bin/sh

SERVICE="$1"
RESULT=`ps -a | sed -n /${SERVICE}/p`

if [ "${RESULT:-null}" = null ]; then
    echo "not running"
    sudo init 0
else
    echo "running"
fi