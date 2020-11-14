#!/bin/bash 

    [ -z "$1" ] && icon="" || icon="$1"

    date_time=$(date +%D\ %R);
    echo "$icon $date_time"