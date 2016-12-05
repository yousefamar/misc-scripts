#!/usr/bin/sh

#
# Runs a command multiple times in new terminals with different arguments
#
# Authors:
# 	Yousef Amar <yousef@amar.io>
#


if [ $# -lt 1 ]; then
	echo "usage: spawn.sh COMMAND [ARGS...]"
	exit
fi

TERMINAL=${TERMINAL:-st}

if [ $# -lt 2 ]; then
	$TERMINAL -e "$1" &
	exit
fi

for args in "${@:2}"
do
	$TERMINAL -e "$1" "$args" &
done
