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


	# Update the System Clock
		timedatectl set-ntp true

	# Erase all HDDs
		sgdisk --zap-all /dev/vda

	# Creating EFI Partition	
		sgdisk -n 1:2048:+300M -t 1:ef00 /dev/vda

	# Creating Root Partition
		sgdisk -n 2:0:+40G -t 2:8300 /dev/vda

	# Creating Swap Partition	
		sgdisk -n 3:0:0 -t 3:8200 /dev/vda

	# Formatting /dev/sda1	
		mkfs.fat -F32 /dev/vda1

 	# Formatting SDA2
		mkfs.ext4 /dev/vda2

 	# Making Swap Partition
		mkswap /dev/vda3

 	# Turning swap on
		swapon /dev/vda3

 	# Mounting Root Partition
		mount /dev/vda2 /mnt

 	# Making Boot folder Structure
		mkdir /mnt/boot

 	# Making EFI folder Structure
		mkdir /mnt/boot/efi

 	# Mounting Boot
		mount /dev/vda1 /mnt/boot/efi

 	# Mirrors
		reflector -l 100 -f 50 -c JP --sort rate --threads 5 --verbose --save /tmp/mirrorlist.new && rankmirrors -n 0 /tmp/mirrorlist.new > /tmp/mirrorlist && sudo cp /tmp/mirrorlist /etc/pacman.d

 	# Installing Base packages
		pacstrap /mnt base base-devel linux linux-firmware nano pacman --noconfirm

 	# Generating FSTAB
		genfstab -U /mnt >> /mnt/etc/fstab

 	#Arch-Chrooting
		arch-chroot /mnt

 	echo "Finished - git clone again"


