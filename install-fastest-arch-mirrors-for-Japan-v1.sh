#!/bin/bash
set -e
#======================================================================================
#                                
# Author  : John Blevins (archmanatpostdotcom)
# License : Distributed under the terms of GNU GPL version 2 or later
# 
# AS ALLWAYS, KNOW WHAT YOU ARE DOING.
#======================================================================================

echo "################################################################"
echo "####             Installing reflector if needed             ####"
echo "################################################################"


# installing refector to test wich servers are fastest
sudo pacman -S --noconfirm --needed reflector


echo "################################################################"
echo "####   finding fastest servers for Natto                     ###"
echo "################################################################"

#sudo reflector -l 100 -f 50 -c JP -c KR -c TW -c CN --sort rate --threads 5 --verbose --save /tmp/mirrorlist.new && rankmirrors -n 0 /tmp/mirrorlist.new > /tmp/mirrorlist && sudo cp /tmp/mirrorlist /etc/pacman.d
sudo reflector -l 100 -f 50 -c JP --sort rate --threads 5 --verbose --save /tmp/mirrorlist.new && rankmirrors -n 0 /tmp/mirrorlist.new > /tmp/mirrorlist && sudo cp /tmp/mirrorlist /etc/pacman.d


echo "################################################################"
echo "####     fastest arch servers in above countries saved      ####"
echo "################################################################"


cat /etc/pacman.d/mirrorlist


echo "################################################################"
echo "####               Checking for possible updates            ####"
echo "################################################################"

sudo pacman -Syu --noconfirm


echo "################################################################"
echo "####             Your system is now up to date              ####"
echo "################################################################"

