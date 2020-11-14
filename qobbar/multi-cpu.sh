#!/bin/bash 
#requires sysstat

    [ -z "$1" ] && icon="" || icon="$1"

    cpus_usage=$(mpstat -P ALL \
  | cut -d " " -f3- \
  | column -t \
  | awk '/^[0-9]/{print $2"%"}' \
  | tr "\n" " ");
    echo "$icon $cpus_usage"