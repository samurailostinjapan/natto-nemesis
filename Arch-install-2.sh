echo
echo "###############################################################################"
echo "Setting Timezone with Symlink"
echo "###############################################################################"
echo
		ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
echo
echo "###############################################################################"
echo "Setting Hardware clock"
echo "###############################################################################"
echo
		hwclock --systohc --utc
echo
echo "###############################################################################"
echo "Setting Locale"
echo "###############################################################################"
echo
		sed -i 's/^#en_US.UTF-8/en_US.UTF-8/' /etc/locale.gen
echo
echo "###############################################################################"
echo "Generating Locale"
echo "###############################################################################"
echo
		locale-gen
echo
echo "###############################################################################"
echo "Add LANG Variable to Locale.conf"
echo "###############################################################################"
echo
		echo "LANG=en_US.UTF-8" > /etc/locale.conf
echo
echo "###############################################################################"
echo "Setting Hostname"
echo "###############################################################################"
echo
		echo "archtest" > /etc/hostname
echo
echo "###############################################################################"
echo "Setting Hosts file"
echo "###############################################################################"
echo
		echo "127.0.0.1		localhost" >> /etc/hosts
		echo "::1			localhost" >> /etc/hosts
echo
echo "###############################################################################"
echo "Installing NetworkManager"
echo "###############################################################################"
echo
		pacman -S networkmanager
echo
echo "###############################################################################"
echo "Enabling NetworkManager"
echo "###############################################################################"
echo
		systemctl enable NetworkManager
echo
echo "###############################################################################"
echo "Set Root Password"
echo "###############################################################################"
echo
		echo -e "cangetin\ncangetin" | passwd root
echo
echo "###############################################################################"
echo "Installing BootLoader"
echo "###############################################################################"
echo
		pacman -S grub efibootmgr
echo
echo "###############################################################################"
echo "Grub Install"
echo "###############################################################################"
echo
		grub-install --target=x86_64-efi --efi-directory=/boot/efi
echo
echo "###############################################################################"
echo "Configuring Grub"
echo "###############################################################################"
echo
		grub-mkconfig -o /boot/grub/grub.cfg
echo
echo "###############################################################################"
echo "Leaving Arch-Chroot"
echo "###############################################################################"
echo
		exit
echo
echo "###############################################################################"
echo "Umounting /mnt"
echo "###############################################################################"
echo
		umount -R /mnt
echo
echo "###############################################################################"
echo "Finished "
echo "###############################################################################"
echo
