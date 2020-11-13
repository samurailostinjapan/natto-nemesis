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

	# Setting Timezone with Symlink
		ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

	# Setting Hardware clock
		hwclock --systohc --utc

 	# Setting Locale
		sed -i 's/^#en_US.UTF-8/en_US.UTF-8/' /etc/locale.gen

 	# Generating Locale
		locale-gen

 	# Add LANG Variable to Locale.conf
		echo "LANG=en_US.UTF-8" > /etc/locale.conf

 	# Setting Hostname
		echo "archtest" > /etc/hostname

 	# Setting Hosts file

		echo -e "127.0.0.1 localhost\n::1 localhost" >> /etc/hosts

 	# Installing NetworkManager
		pacman -S networkmanager --noconfirm

 	# Enabling NetworkManager
		systemctl enable NetworkManager

	# Set Root Password
		echo -e "cangetin\ncangetin" | passwd root

 	# Installing BootLoader
		pacman -S grub efibootmgr --noconfirm

 	# Grub Install
		grub-install --target=x86_64-efi --efi-directory=/boot/efi

	# Configuring Grub
		grub-mkconfig -o /boot/grub/grub.cfg

  	# Leaving Arch-Chroot
		echo "exit"

 	# Umounting /mnt
		echo "umount -R /mnt"

	# Exiting
		echo "exit"

 	echo "Finished - Reboot!"

