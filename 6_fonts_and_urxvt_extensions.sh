set -e

echo "INSTALLING URXVT EXTENSIONS"
yay -S --noconfirm --needed urxvt-font-size-git
yay -S --noconfirm --needed urxvt-clipboard
echo "URXVT EXTENSIONS INSTALLED"

echo "CONFIGURING FONTS GLOBALY"
sudo cp /fonts/local.conf /etc/fonts/
echo "FONT CONFIGURATION FINISHED"