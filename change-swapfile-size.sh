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

	echo "CHANGING SWAPFILE SIZE"

	#Turning off current swapfile
		sudo swapoff /swapfile

 	# Removing current swapfile
		sudo rm -f /swapfile

	# ##Making new swapfile" ##"Change count to desired swapfile size in mb
		sudo dd if=/dev/zero of=/swapfile bs=1M count=4096 status=progress

	# Changing permissions on swapfile"
		sudo chmod 600 /swapfile

	# Formating swapfile
		sudo mkswap /swapfile

 	# Activating swapfile
		sudo swapon /swapfile

	echo "Finished - REBOOT!"



