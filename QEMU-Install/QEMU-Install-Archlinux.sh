#!/bin/bash
#set -e
###############################################################################
# Author	:	Arcolinux Natto
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
echo "Creating Archlinux Virtual Machine "
echo "###############################################################################"
echo 
		sudo virt-install \
			 --install no_install=yes \
 			 --name Archlinux-TEST SATA \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole none \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/Archlinux_HDD1.qcow2,bus='sata',size=50,format=qcow2,device=hdd,bus=sata \
			 --cdrom $HOME/arcolinuxd-v20.11.9-x86_64.iso
echo
echo "###############################################################################"
echo "Completed"
echo "###############################################################################"

 ##--cdrom $HOME/ISOs/archlinux-2020.11.01-x86_64.iso \