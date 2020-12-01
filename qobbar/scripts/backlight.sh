#!/bin/sh

   # [ -z "$1" ] && icon="" || icon="$1"

  #  MP=$(cat /proc/mounts | grep "^/dev/s*" | awk '{print $1}' | wc -l)

#echo "$icon $MP"
    
XBACKLIGHT=$(xbacklight -get |  cut -d "." -f 1) 
    #if [[ "$XBACKLIGHT" -gt "70" ]] && [[ $Bat -lt 100 ]];then
        #echo " $XBACKLIGHT %"
    #elif [[ "$XBACKLIGHT" -gt "60" ]] && [[ $Bat -lt 70 ]];then
        #echo  " $XBACKLIGHT %"
    #elif  [[ "$XBACKLIGHT" -gt "30" ]] && [[ $Bat -lt 60 ]];then
        #echo  " $XBACKLIGHT %"
    #else
        #echo  " $XBACKLIGHT%"
    #fi 
printf "%.f%%" $XBACKLIGHT