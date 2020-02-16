#!/bin/bash

set -e

echo "INSTALLING ADDITIONAL SOFTWARE"

yay -S --noconfirm --needed i3blocks
yay -S --noconfirm --needed python-pywal
yay -S --noconfirm --needed polybar
yay -S --noconfirm --needed spotifywm-git
yay -S --noconfirm --needed ttf-font-awesome
yay -S --noconfirm --needed ttf-mac-fonts
yay -S --noconfirm --needed font-manager-git
yay -S --noconfirm --needed grub-customizer
yay -S --noconfirm --needed hardcode-fixer-git
yay -S --noconfirm --needed inxi
yay -S --noconfirm --needed yad
yay -S --noconfirm --needed zsh zsh-syntax-highlighting zsh-completions
yay -S --noconfirm --needed octopi
sh config_qemu.sh
sh config_wallpapers.sh

echo "Setting zsh as the default shell"
sudo chsh $USER -s /bin/zsh

echo "Adding oh-my-zsh"
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh
echo 'source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh \ 
neofetch' >>  ~/.zshrc

echo "#################  REBOOT YOUR SYSTEM   ###################"
