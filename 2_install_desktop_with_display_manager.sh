#!/bin/bash

set -e

sudo pacman -Syyu --noconfirm

echo "INSTALLING LY DISPLAY MANAGER"

yay -S --noconfirm --needed ly-git
sudo pacman -S --noconfirm --needed i3-gaps

echo "PACKAGES INSTALLED"

echo "ENABLING SYSTEM SERVICE FOR LY"

sudo systemctl enable ly -f
sudo systemctl set-default graphical.target

echo "CORRECTING MICROCODE ERROR"

sudo pacman -S intel-ucode --noconfirm
sudo grub-mkconfig -o /boot/grub/grub.cfg

echo "CREATING PERSONAL FOLDERS"
sudo pacman -S --noconfirm --needed xdg-user-dirs

xdg-user-dirs-update
xdg-user-dirs-update --force

echo "CREATING PRIVATE FOLDERS WE USE LATER"

[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"
[ -d $HOME"/.themes" ] || mkdir -p $HOME"/.themes"
[ -d $HOME"/.fonts" ] || mkdir -p $HOME"/.fonts"

echo "[DONE] DISPLAY MANAGER AND DESKTOP INSTALLED"