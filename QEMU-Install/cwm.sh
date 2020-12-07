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
 			 --name ArcolinuxB-Cinnamon \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole graphical \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/ArcolinuxB-cwm.qcow2,size=30,format=qcow2 \
			 --cdrom /ISOs/arcolinuxb-dwm-v21.01.2-x86_64.iso

echo "###############################################################################"
echo "Completed"
echo "###############################################################################"

 ##--cdrom $HOME/ISOs/archlinux-2020.11.01-x86_64.iso \