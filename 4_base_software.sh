#!/bin/bash

set -e 
sudo pacman -Syyu

echo "INSTALLING ACCESSORIES"
sudo pacman -S --noconfirm --needed variety
sudo pacman -S --noconfirm --needed qalculate-gtk
sudo pacman -S --noconfirm --needed gnome-screenshot

echo "INSTALLING GRAPHICS"
sudo pacman -S --noconfirm --needed gimp
sudo pacman -S --noconfirm --needed inkscape
sudo pacman -S --noconfirm --needed ristretto
sudo pacman -S --noconfirm --needed gpick

echo "INSTALLING DEVELOPMENT"
sudo pacman -S --noconfirm --needed neovim
yay -S --noconfirm --needed vscodium-bin
yay -S --noconfirm --needed gitkraken


echo "INSTALLING INTERNET"
sudo pacman -S --noconfirm --needed firefox-developer-edition
sudo pacman -S --noconfirm --needed chromium
sudo pacman -S --noconfirm --needed evolution
yay -S --noconfirm --needed slack-desktop

echo "INSTALLING MULTIMEDIA"
sudo pacman -S --noconfirm --needed vlc
sudo pacman -S --noconfirm --needed simplescreenrecorder
yay -S --noconfirm --needed spotify

echo "INSTALLING SYSTEM SOFTWARE"
sudo pacman -S --noconfirm --needed rxvt-unicode 
sudo pacman -S --noconfirm --needed thunar 
sudo pacman -S --noconfirm --needed thunar-archive-plugin
sudo pacman -S --noconfirm --needed thunar-volman
sudo pacman -S --noconfirm --needed tumbler
sudo pacman -S --noconfirm --needed xfce4-taskmanager
sudo pacman -S --noconfirm --needed xfce4-notifyd 
sudo pacman -S --noconfirm --needed xfce4-appfinder 
sudo pacman -S --noconfirm --needed accountsservice
sudo pacman -S --noconfirm --needed curl
sudo pacman -S --noconfirm --needed wget
sudo pacman -S --noconfirm --needed lsb-release
sudo pacman -S --noconfirm --needed neofetch
sudo pacman -S --noconfirm --needed scrot
sudo pacman -S --noconfirm --needed unclutter
sudo pacman -S --noconfirm --needed xdo
sudo pacman -S --noconfirm --needed xdotool
sudo pacman -S --noconfirm --needed zenity
sudo pacman -S --noconfirm --needed qt5ct
sudo pacman -S --noconfirm --needed unace unrar zip unzip sharutils  uudeview  arj cabextract file-roller
sudo pacman -S --noconfirm --needed arandr
sudo pacman -S --noconfirm --needed awesome-terminal-fonts
sudo pacman -S --noconfirm --needed picom  
sudo pacman -S --noconfirm --needed dmenu  
sudo pacman -S --noconfirm --needed feh 
sudo pacman -S --noconfirm --needed nitrogen 
sudo pacman -S --noconfirm --needed rofi 
sudo pacman -S --noconfirm --needed lxappearance 
