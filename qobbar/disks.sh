#! /bin/bash

    [ -z "$2" ] && icon="" || icon="$2"

    disk_usage=$(df -h "$1" | awk '/\/dev\//{print $3-G"/"$2}');
   # echo "$icon $disk_usage"
    echo "$disk_usage"
    