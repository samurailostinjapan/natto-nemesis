#! /bin/bash

    [ -z "$1" ] && icon="" || icon="$1"

    uptime=$(uptime -p \
	| sed -E 's/ hour/H/g; s/ hours/H/g; s/ minutes/M/g; s/ minute/M/g; s/ day/D/g; s/ days/D/; s/up //g') 

    echo "$icon $uptime"