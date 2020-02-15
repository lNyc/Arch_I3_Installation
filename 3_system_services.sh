#!/bin/bash
# Author	:	Erik Dubois
# Autor https://github.com/arcolinuxd

set -e

echo "INSTALLING SOUND SOFTWARE"
sudo pacman -S pulseaudio --noconfirm --needed
sudo pacman -S pulseaudio-alsa --noconfirm --needed
sudo pacman -S pavucontrol  --noconfirm --needed
sudo pacman -S alsa-utils alsa-plugins alsa-lib alsa-firmware --noconfirm --needed
sudo pacman -S gstreamer --noconfirm --needed
sudo pacman -S gst-plugins-good gst-plugins-bad gst-plugins-base gst-plugins-ugly --noconfirm --needed
sudo pacman -S volumeicon --noconfirm --needed
sudo pacman -S playerctl --noconfirm --needed

echo "################################################################"
echo "#########   SOUND SOFTWARE SOFTWARE INSTALLED   ################"
echo "################################################################"

echo "INSTALLING BLUETOOTH SOFTWARE"

sudo pacman -S --noconfirm --needed pulseaudio-bluetooth
sudo pacman -S --noconfirm --needed bluez
sudo pacman -S --noconfirm --needed bluez-libs
sudo pacman -S --noconfirm --needed bluez-utils
sudo pacman -S --noconfirm --needed blueberry

sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service

sudo sed -i 's/'#AutoEnable=false'/'AutoEnable=true'/g' /etc/bluetooth/main.conf

echo "Adding the current user to the group rfkill :"
echo "In order to be able to switch blueberry on and off"
# https://github.com/linuxmint/blueberry/issues/75

sudo usermod  -a -G rfkill $USER

echo "################################################################"
echo "##############  BLUETOOTH SOFTWARE INSTALLED   #################"
echo "################################################################"

echo "INSTALLING PRINTER SOFTWARE"

sudo pacman -S --noconfirm --needed cups cups-pdf

#first try if you can print without foomatic
#sudo pacman -S foomatic-db-engine --noconfirm --needed
#sudo pacman -S foomatic-db foomatic-db-ppds foomatic-db-nonfree-ppds foomatic-db-gutenprint-ppds --noconfirm --needed
sudo pacman -S ghostscript gsfonts gutenprint --noconfirm --needed
sudo pacman -S gtk3-print-backends --noconfirm --needed
sudo pacman -S libcups --noconfirm --needed
sudo pacman -S hplip --noconfirm --needed
sudo pacman -S system-config-printer --noconfirm --needed

sudo systemctl enable org.cups.cupsd.service

echo "################################################################"
echo "###############  PRINTERS SOFTWARE INSTALLED   #################"
echo "################################################################"

echo "INSTALL TLP FOR BATTERY LIFE - LAPTOPS"

sudo pacman -S --noconfirm --needed tlp
sudo systemctl enable tlp.service
sudo systemctl start tlp.service

echo "################################################################"
echo "#################  TLP  SOFTWARE INSTALLED   ###################"
echo "################################################################"

echo "#################  REBOOT YOUR SYSTEM   ###################"
