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

echo
echo "###############################################################################"
echo "Adding bash-completions"
echo "###############################################################################"
echo
		pacman -S bash-completion --noconfirm
echo
echo "###############################################################################"
echo "Creating User Account for Natto"
echo "###############################################################################"
echo
		useradd -m -g users -G audio,video,network,wheel,storage,rfkill -s /bin/bash natto
echo
echo "###############################################################################"
echo "Setting Natto Password"
echo "###############################################################################"
echo
		echo -e "cangetin\ncangetin" | passwd natto
echo
echo "###############################################################################"
echo "Adding Wheel to SUDOERS"
echo "###############################################################################"
echo
		sed -i 's/^# %wheel ALL=(ALL) ALL$/%wheel ALL=(ALL) ALL/' /etc/sudoers
echo
echo "###############################################################################"
echo "Installing Xorg"
echo "###############################################################################"
echo
		pacman -S xorg-server xorg-apps xorg-xinit xterm --noconfirm
echo
echo "###############################################################################"
echo "Installing Video Driver for Intel"
echo "###############################################################################"
echo
		pacman -S xf86-video-intel --noconfirm
echo
echo "###############################################################################"
echo "                "Finished - Please REBOOT your computer"                   ####"
echo "###############################################################################"
echo