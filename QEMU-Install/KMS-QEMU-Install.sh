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
echo "Installing KVM/QEMU"
echo "###############################################################################"
echo
echo "###############################################################################"
echo "Installing required files"
echo "###############################################################################"
echo
sudo pacman -S virt-manager qemu qemu-arch-extra edk2-ovmf vde2 ebtables dnsmasq bridge-utils gnu-netcat 
echo
echo "###############################################################################"
echo "Enabling the libvirtd service"
echo "###############################################################################"
echo
sudo systemctl enable libvirtd.service
echo
echo "###############################################################################"
echo "Starting the libvirtd service"
echo "###############################################################################"
echo
sudo systemctl start libvirtd.service
echo
echo "###############################################################################"
echo "Creating bridge configuration "
echo "###############################################################################"
echo
echo "<network>
  <name>arcolinux_qemu</name>
  <forward mode='nat'>
	<nat>
	  <port start='1024' end='65535'/>
	</nat>
  </forward>
  <bridge name='arcolinux_qemu' stp='on' delay='0'/>
  <ip address='192.168.30.1' netmask='255.255.255.0'>
	<dhcp>
	  <range start='192.168.30.50' end='192.168.30.200'/>
	</dhcp>
  </ip>
</network>" > arcolinux_qemu.xml
echo
echo "###############################################################################"
echo "Configuring the bridge"
echo "###############################################################################"
echo
sudo virsh net-define arcolinux_qemu.xml
echo
echo "###############################################################################"
echo "Setting bridge to start"
echo "###############################################################################"
echo
sudo virsh net-start arcolinux_qemu
echo
echo "###############################################################################"
echo "Setting bridge to Autostart"
echo "###############################################################################"
echo
sudo virsh net-autostart arcolinux_qemu
echo
echo "###############################################################################"
echo "                 "Finished Installing KMS/QEMU"                   	     ####"
echo "###############################################################################"
echo

## Use sudo virsh net-undefine to remove the bridge xml
## use sudo virsh sudo virsh net-destroy br10 to stop the bridge and remove
