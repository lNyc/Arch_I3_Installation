#!/bin/bash

set -e

echo "INSTALLING ADDITIONAL SOFTWARE"

yay -S --noconfirm i3blocks
yay -S --noconfirm python-pywal
yay -S --noconfirm polybar
yay -S --noconfirm spotifywm-git
yay -S --noconfirm ttf-font-awesome
yay -S --noconfirm ttf-mac-fonts
yay -S --noconfirm font-manager-git
yay -S --noconfirm grub-customizer
yay -S --noconfirm hardcode-fixer-git
yay -S --noconfirm inxi
yay -S --noconfirm yad
yay -S --noconfirm zsh
yay -S --noconfirm octopi octopi-notifier-frameworks

echo "#################  REBOOT YOUR SYSTEM   ###################"
