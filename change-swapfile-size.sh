#!/bin/bash
#set -e
###############################################################################
# Author	:	Erik Dubois
# Website	:	https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxb.com
# Website	:	https://www.arcolinuxforum.com
###############################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###############################################################################

echo
echo "###############################################################################"
echo "CHANGING SWAPFILE SIZE"
echo "###############################################################################"
echo
echo "###############################################################################"
echo "Turning off current swapfile"
echo "###############################################################################"
echo
sudo swapoff /swapfile
echo
echo "###############################################################################"
echo "Removing current swapfile"
echo "###############################################################################"
echo
sudo rm -f /swapfile
echo
echo "###############################################################################"
echo "##Making new swapfile" ##"Change count to desired swapfile size in mb"
echo "###############################################################################"
echo
sudo dd if=/dev/zero of=/swapfile bs=1M count=4096 status=progress
echo
echo "###############################################################################"
echo "Changing permissions on swapfile"
echo "###############################################################################"
echo
sudo chmod 600 /swapfile
echo
echo "###############################################################################"
echo "Formating swapfile"
echo "###############################################################################"
echo
sudo mkswap /swapfile
echo
echo "###############################################################################"
echo "Activating swapfile"
echo "###############################################################################"
echo
sudo swapon /swapfile
echo
echo "###############################################################################"
echo "                            "Finished - Please REBOOT your computer"                                        ####"
echo "###############################################################################"
echo


