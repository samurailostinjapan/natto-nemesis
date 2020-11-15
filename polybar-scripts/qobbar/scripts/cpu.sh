#!/bin/bash 
#requires sysstat



 [ -z "$1" ] && icon="" || icon="$1"
 CPU=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}')

    #echo "$icon  $CPU%"
    echo "$CPU"


    