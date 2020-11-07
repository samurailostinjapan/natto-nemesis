#!/bin/bash
#set -e

echo
tput setaf 1
echo "################################################################"
echo "#####  KMS-QEMU Arcolinux Desktop setup                     ####"
echo "################################################################"
tput sgr0
echo
echo "Select the desktop you want to install"
echo
echo "########################################################################################################################"
echo "0.   Do nothing"
echo "1.   ArcolinuxB-Awesome"			
echo "2.   ArcolinuxB-Bspwm"				
echo "3.   ArcolinuxB-Budgie"
echo "4.   ArcolinuxB-Cinnamon"			
echo "5.   ArcolinuxB-Deepin"				
echo "6.   ArcolinuxB-Dwm"
echo "7.   ArcolinuxB-Gnome"			
echo "8.   ArcolinuxB-Herbstluftwm"			
echo "9.   ArcolinuxB-I3"
echo "10.  ArcolinuxB-Icewm"			
echo "11.  ArcolinuxB-Jwm"					
echo "12.  ArcolinuxB-Kodi"
echo "13.  ArcolinuxB-Lxqt"				
echo "14.  ArcolinuxB-Mate"					
echo "15.  ArcolinuxB-Openbox"
echo "16.  ArcolinuxB-Plasma"			
echo "17.  ArcolinuxB-Qtile"				
echo "18.  ArcolinuxB-Spectrwm"
echo "19.  ArcolinuxB-Sway"				
echo "20.  ArcolinuxB-Ukui"					
echo "21.  ArcolinuxB-Xfce"
echo "22.  ArcolinuxB-Xmonad"			
echo "23.  ArcolinuxB-Xtended"				
echo "24.  Arcolinux-iso"
echo "25.  Arcolinux-iso-dev"			
echo "26.  Arcolinux-iso-git"				
echo "27.  ArcolinuxD-iso"
echo "28.  ArcolinuxD-iso-dev"			
echo "29.  ArcolinuxD-iso-git"
echo "30.  Archlinux"
echo "########################################################################################################################"

echo "Type the number..."

read CHOICE

case $CHOICE in

    0 )
      echo
      echo "########################################"
      echo "We did nothing as per your request"
      echo "########################################"
      echo
      ;;

    1 )
			sudo virt-install \
 			 --name ArcolinuxB-Awesome \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole graphical \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/ArcolinuxB-Awesome.qcow2,size=30,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinuxb-awesome-v20.11.9-x86_64.iso    
      ;;
    2 )
			sudo virt-install \
 			 --name ArcolinuxB-Bspwm \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole graphical \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/ArcolinuxB-Bspwm.qcow2,size=30,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinuxb-bspwm-v20.11.9-x86_64.iso 
      ;;
    3 )
			sudo virt-install \
 			 --name ArcolinuxB-Budgie \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole graphical \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/ArcolinuxB-Budgie.qcow2,size=30,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinuxb-budgie-v20.11.9-x86_64.iso 
      ;;
    4 )
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
			 --disk path=/mnt/storage/QEMU-Disk/ArcolinuxB-Cinnamon.qcow2,size=30,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinuxb-cinnamon-v20.11.9-x86_64.iso 
      ;;
    5 )
			sudo virt-install \
 			 --name ArcolinuxB-Deepin \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole graphical \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/ArcolinuxB-Deepin.qcow2,size=30,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinuxb-deepin-v20.11.9-x86_64.iso 
      ;;
    6 )
			sudo virt-install \
 			 --name ArcolinuxB-Dwm \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole graphical \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/ArcolinuxB-Dwm.qcow2,size=30,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinuxb-dwm-v20.11.9-x86_64.iso 
      ;;
    7 )
			sudo virt-install \
 			 --name ArcolinuxB-Gnome \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole graphical \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/ArcolinuxB-Gnome.qcow2,size=30,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinuxb-gnome-v20.11.9-x86_64.iso 
      ;;
    8 )
			sudo virt-install \
 			 --name ArcolinuxB-Herbstluftwm \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole graphical \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/ArcolinuxB-Herbstluftwm.qcow2,size=30,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinuxb-herbstluftwm-v20.11.9-x86_64.iso 
      ;;
    9 )
			sudo virt-install \
 			 --name ArcolinuxB-I3 \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole graphical \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/ArcolinuxB-I3.qcow2,size=30,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinuxb-i3-v20.11.9-x86_64.iso 
      ;;
    10 )
			sudo virt-install \
 			 --name ArcolinuxB-Icewm \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole graphical \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/ArcolinuxB-Icewm.qcow2,size=30,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinuxb-icewm-v20.11.9-x86_64.iso 
      ;;
    11 )
			sudo virt-install \
 			 --name ArcolinuxB-Jwm \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/ArcolinuxB-Jwm.qcow2,size=30,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinuxb-jwm-v20.11.9-x86_64.iso 
      ;;
    12 )
			sudo virt-install \
 			 --name ArcolinuxB-Kodi \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole graphical \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/ArcolinuxB-Kodi.qcow2,size=30,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinuxb-kodi-v20.11.9-x86_64.iso 
      ;;
    13 )
			sudo virt-install \
 			 --name ArcolinuxB-Lxqt \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole graphical \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/ArcolinuxB-Lxqt.qcow2,size=30,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinuxb-lxqt-v20.11.9-x86_64.iso 
      ;;
    14 )
			sudo virt-install \
 			 --name ArcolinuxB-Mate \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole graphical \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/ArcolinuxB-Mate.qcow2,size=30,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinuxb-mate-v20.11.9-x86_64.iso 
      ;;            
    15 )
			sudo virt-install \
 			 --name ArcolinuxB-Openbox \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole graphical \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/ArcolinuxB-Openbox.qcow2,size=30,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinuxb-openbox-v20.11.9-x86_64.iso 
      ;;
    16 )
			sudo virt-install \
 			 --name ArcolinuxB-Plasma \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole graphical \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/ArcolinuxB-Plasma.qcow2,size=30,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinuxb-plasma-v20.11.9-x86_64.iso 
      ;;      
    17 )
			sudo virt-install \
 			 --name ArcolinuxB-Qtile \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole graphical \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/ArcolinuxB-Qtile.qcow2,size=30,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinuxb-qtile-v20.11.9-x86_64.iso 
      ;;
    18 )
			sudo virt-install \
 			 --name ArcolinuxB-Spectrwm \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole graphical \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/ArcolinuxB-Spectrwm.qcow2,size=30,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinuxb-spectrwm-v20.11.9-x86_64.iso \

      ;;     
    19 )
			sudo virt-install \
 			 --name ArcolinuxB-Sway \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole graphical \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/ArcolinuxB-Sway.qcow2,size=30,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinuxb-sway-v20.11.9-x86_64.iso 
      ;;
    20 )
			sudo virt-install \
 			 --name ArcolinuxB-Ukui \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole graphical \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/ArcolinuxB-UkuiAwesom.qcow2,size=30,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinuxb-ukui-v20.11.9-x86_64.iso 
      ;;
    21 )
			sudo virt-install \
 			 --name ArcolinuxB-Xfce \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole graphical \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/ArcolinuxB-Xfce.qcow2,size=30,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinuxb-xfce-v20.11.9-x86_64.iso 
      ;;
    20 )
			sudo virt-install \
 			 --name ArcolinuxB-Ukui \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole graphical \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/ArcolinuxB-UkuiAwesom.qcow2,size=30,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinuxb-ukui-v20.11.9-x86_64.iso 
      ;;
    21 )
			sudo virt-install \
 			 --name ArcolinuxB-Xfce \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole graphical \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/ArcolinuxB-Xfce.qcow2,size=30,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinuxb-xfce-v20.11.9-x86_64.iso 
      ;;
    20 )
			sudo virt-install \
 			 --name ArcolinuxB-Ukui \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole graphical \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/ArcolinuxB-Ukui.qcow2,size=30,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinuxb-ukui-v20.11.9-x86_64.iso 
      ;;
    21 )
			sudo virt-install \
 			 --name ArcolinuxB-Xfce \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole graphical \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/ArcolinuxB-Xfce.qcow2,size=30,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinuxb-xfce-v20.11.9-x86_64.iso 
      ;;
    22 )
			sudo virt-install \
 			 --name ArcolinuxB-Xmonad \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole graphical \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/ArcolinuxB-Xmonad.qcow2,size=30,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinuxb-xmonad-v20.11.9-x86_64.iso 
      ;;
    23 )
			sudo virt-install \
 			 --name ArcolinuxB-Xtended \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole graphical \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/ArcolinuxB-Xtended.qcow2,size=30,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinuxb-xtended-v20.11.9-x86_64.iso 
      ;;
    24 )
			sudo virt-install \
 			 --name Arcolinux-iso \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole graphical \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/Arcolinux-iso.qcow2,size=30,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinux-????-v20.11.9-x86_64.iso 
      ;;
    25 )
			sudo virt-install \
 			 --name Arcolinux-iso-dev \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole graphical \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/Arcolinux-iso-git.qcow2,size=30,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinux-???-v20.11.9-x86_64.iso 
      ;;
    26 )
			sudo virt-install \
 			 --name Arcolinux-iso-git \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole graphical \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/Arcolinux-iso-git.qcow2,size=30,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinux-????-v20.11.9-x86_64.iso 
      ;;
    27 )
			sudo virt-install \
 			 --name ArcolinuxD-iso \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole none \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/ArcolinuxD-iso.qcow2,size=50,format=qcow2 \
			 --cdrom $HOME/ISOs/arcolinuxd-v20.11.9-x86_64.iso
      ;;
    28 )
			sudo virt-install \
 			 --name ArcolinuxD-iso-dev \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole none \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/ArcolinuxD-iso-dev.qcow2,size=50,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinuxD-???-v20.11.9-x86_64.iso 
      ;;
    29 )
			sudo virt-install \
 			 --name ArcolinuxD-iso-git \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole graphical \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/ArcolinuxD-iso-git.qcow2,size=30,format=qcow2 \
			 --cdrom /home/natto/ArcoLinuxB-Out/arcolinuxD-???-v20.11.9-x86_64.iso 
      ;;
    30 )
			sudo virt-install \
			 --install no_install=yes \
 			 --name Archlinux \
			 --vcpus 4 \
			 --cpu host \
			 --memory 5120 \
			 --video virtio \
             --autoconsole none \
             --boot uefi \
			 --os-type=Linux \
			 --os-variant=archlinux \
			 --network bridge=br10 \
			 --disk path=/mnt/storage/QEMU-Disk/Archlinux.qcow2,size=50,format=qcow2 \
			 --cdrom $HOME/ISOs/archlinux-2020.11.01-x86_64.iso
      ;;                               
    * )
      echo "#################################"
      echo "Creating now"
      echo "#################################"
      ;;
esac

echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"

