#!/bin/bash
#set -e
###############################################################################
# Title	:	ArchLinux Install Script
# Author: 	Natto
###############################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###############################################################################

	# Adding bash-completions
		pacman -S bash-completion --noconfirm

	# Creating User Account for Natto
		useradd -m -g users -G audio,video,network,wheel,storage,rfkill -s /bin/bash natto

 	# Setting Natto Password
		echo -e "cangetin\ncangetin" | passwd natto

 	# Adding Wheel to SUDOERS
		sed -i 's/^# %wheel ALL=(ALL) ALL$/%wheel ALL=(ALL) ALL/' /etc/sudoers

 	# Installing Xorg
		pacman -S xorg-server xorg-apps xorg-xinit xterm --noconfirm

 	# Installing Video Driver for Intel
		pacman -S xf86-video-intel --noconfirm

	echo "Finished install ArchLinux- REBOOT!" 
