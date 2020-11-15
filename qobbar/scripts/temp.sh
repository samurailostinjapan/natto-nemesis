#! /bin/bash

	[ -z "$1" ] && icon="" || icon="$1"

	temp=$(sensors | awk '/^temp1/{print $2}' | tr -d "+°C"  | cut -d. -f1 )

echo " $temp °C"
