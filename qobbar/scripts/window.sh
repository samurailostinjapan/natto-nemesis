#! /bin/bash

   [ -z "$1" ] && icon="" || icon="$1"
    [ -z "$2" ] && CAR="150" || CAR="$2"

    focus=$(xdotool getactivewindow getwindowname)
    focus_Number=$(xdotool getactivewindow getwindowname | wc -c)
    Focus_N=$(xdotool getactivewindow getwindowname | head -c $CAR )

#if [ -z "$focus" ];then
        #echo "$icon Welcome"
 #else
    #[ "$focus_Number" -gt "$CAR" ] && echo "$icon $Focus_N ..." || echo "$icon $focus"
#fi

if [ -z "$focus" ];then
        echo "Welcome"
 else
    [ "$focus_Number" -gt " $CAR" ] && echo " $Focus_N ..." || echo " $focus"
fi