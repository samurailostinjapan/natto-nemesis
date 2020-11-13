#!/bin/bash
set -e
#======================================================================================
#                                
# Author  : John Blevins (archmanatpostdotcom)
# License : Distributed under the terms of GNU GPL version 2 or later
# 
# AS ALLWAYS, KNOW WHAT YOU ARE DOING.
#======================================================================================



echo 

# Finding fastest servers for Natto        
	sudo reflector -l 100 -f 50 -c JP --sort rate --threads 5 --verbose --save /tmp/mirrorlist.new && rankmirrors -n 0 /tmp/mirrorlist.new > /tmp/mirrorlist && sudo cp /tmp/mirrorlist /etc/pacman.d

# Saving fastest arch servers
	cat /etc/pacman.d/mirrorlist

# Checking for possible updates           
	sudo pacman -Syu --noconfirm

echo " DONE " 


