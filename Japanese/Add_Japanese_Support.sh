#!/bin/bash
set -e
##################################################################################################################
echo "################################################################"
echo "#########            Adding Japanese Support!           ################"
echo "################################################################"

echo "Installing Fcitx"

sudo pacman -S fcitx5 --noconfirm --needed
sudo pacman -S fcitx5-configtool --noconfirm --needed
sudo pacman -S fcitx5-gtk --noconfirm --needed
sudo pacman -S fcitx5-qt5 --noconfirm --needed
sudo pacman -S fcitx5-rime --noconfirm --needed
sudo yay -S fcitx-arc-git --noconfirm --needed
sudo yay -S fcitx5-mozc --noconfirm --needed

echo "Adding xprofile to home direcotry"
homedir=$( getent passwd "$USER" | cut -d: -f6 )

cat <<EOT >> /$homedir/.xprofile
"export GTK_IM_MODULE=fcitx" 
"export QT_IM_MODULE=fcitx" 
"export XMODIFIERS="@im=fcitx"
INPUT_METHOD  DEFAULT=fcitx5
GTK_IM_MODULE DEFAULT=fcitx5
QT_IM_MODULE  DEFAULT=fcitx5
XMODIFIERS    DEFAULT=@im=fcitx5
export XMODIFIERS=@im=fcitx 
export QT_IM_MODULE=fcitx
EOT

echo "################################################################"
echo "#########            DONE!           ################"
echo "################################################################"
