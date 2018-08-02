#!/bin/sh
sleep 5
PROCESS="$1"
PROCANDARGS=$*

while :
do
	ps_out=`ps -ef | grep $1 | grep -v 'grep' | grep -v $0`
	result=$(echo $ps_out | grep "$1")
	if [[ "$result" != "" ]];then
	    echo "Running"
	else
	    echo "Not Running"
	    sudo init 0
	fi
  sleep 5
done
