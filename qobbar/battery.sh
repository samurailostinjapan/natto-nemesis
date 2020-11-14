#!/bin/bash 
#requires acpi

     Bat=$(acpi | awk '{print $4}'| tr -d "%,");
    adapt=$(acpi -a | awk '{print $3}');
     
  if [ "$adapt" = "on-line" ];then
   icon=""
   else
   icon=""
     fi
  echo "$icon  $Bat%"