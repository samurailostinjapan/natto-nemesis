#!/bin/bash 
#requires sysstat



 [ -z "$1" ] && icon="" || icon="$1"

CPU=$(top -b -n2 -p 1 \
| fgrep "Cpu(s)" \
| tail -1 \
| awk -F'id,' -v prefix="$prefix" '{ split($1, vs, ","); \
v=vs[length(vs)]; sub("%", "", v); \
printf "%s%0.0f%%\n", prefix, 100 - v }')

 echo "$CPU"

      



