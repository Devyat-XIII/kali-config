#!/bin/bash

# Update and upgrade
sudo apt update; sudo apt upgrade -y

# Install alacritty, sxhkd (dropdown bind f10), tmux, bat, lsd
sudo apt install alacritty sxhkd tmux bat lsd -y

# Install tdrop
git clone https://github.com/noctuid/tdrop && cd tdrop && sudo make install && cd ..

# sxhkd
mkdir ~/.config/sxhkd
mv sxhkdrc ~/.config/sxhkd/sxhkdrc


# Fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip
sudo unzip JetBrainsMono.zip -d /usr/share/fonts/
fc-cache -fv

# Alacritty
mv alacritty -d ~/.config/

# bash_aliases
mv bash_aliases ~/.bash_aliases

# zsh
mv zshrc ~/.zshrc

# Tmux
mv tmux ~/.tmux
mv tmux.conf ~/.tmux.conf
# prefix + i

# Wallpaper
sudo cp desktop.jpg /usr/share/backgrounds/kali-16x9/default
sudo cp desktop.jpg /usr/share/backgrounds/kali/kali-ferrofluid-16x9.jpg
sudo cp login.png /usr/share/backgrounds/kali/kali-aqua-16x9.jpg
sudo cp login.png /usr/share/backgrounds/kali-16x9/kali-aqua.jpg

# opt - Useful 
#sudo unzip opt_useful.zip -d /opt
#sudo chown kali:kali /opt/payloads /opt/things /opt/useful

# Desktop Enviroment
sudo apt install -y kali-desktop-kde
sudo update-alternatives --config x-session-manager
# Unistall 
# xfce sudo apt purge --autoremove kali-desktop-xfce

# Fix copy/paste, drag and drop with KDE desktop
kwriteconfig5 --file startkderc --group General --key systemdBoot false

# Config autostart
mkdir ~/.config/autostart/
mv *.desktop ~/.config/autostart/