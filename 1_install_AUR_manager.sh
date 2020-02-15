#!/bin/bash

set -e

echo "Cloning YAY project into HOME direcotory"
cd ~ && git clone https://aur.archlinux.org/yay.git
echo "Making the project"
cd yay && makepkg -sri --noconfirm
echo "[DONE] YAY Installed"