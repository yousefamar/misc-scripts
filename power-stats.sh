#!/usr/bin/sh

#
# Prints CSV power stats for logging, to be invoked as a cron job or from a systemd timer
#
# Authors:
# 	Yousef Amar <yousef@amar.io>
#

for f in /sys/class/power_supply/*; do
	type=$(cat $f/type)
	if   [ "$type" == "Mains" ]; then
		AC="$f"
	elif [ "$type" == "Battery" ]; then
		BAT="$f"
	fi
done

echo "$(date +%s),$(cat $AC/online),$(cat $BAT/capacity)"
