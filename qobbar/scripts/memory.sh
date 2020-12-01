#! /bin/bash
 
   #mem_used=$(free -h | awk '(NR == 2) {print $3}')
   mem_used=$(free -h | awk '/^Mem:/{print $3}')

   echo "$mem_used"