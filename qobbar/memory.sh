#!/bin/bash 

    [ -z "$1" ] && icon="" || icon="$1"

    mem_usage=$(free -h | awk '/^Mem:/{print $3}');
    #echo "$icon $mem_usage"
    echo "$mem_usage"