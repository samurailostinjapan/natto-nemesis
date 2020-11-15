#! /bin/bash
 
   mem_used=$(free -h | awk '(NR == 2) {print $3}')
   mem_total=$(free -h |awk '(NR == 2) {print $2}')

   echo "$mem_used/$mem_total"