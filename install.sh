#!/bin/sh

#creating backupfiles directory
mkdir -p backupfiles/user/.local/share
mkdir -p backupfiles/user/.config
mkdir -p backupfiles/system/etc/systemd

#copy the backup files in the backufiles folder
echo "copyng backup files..."
cp -rf ~/.local/share/nvim backupfiles/user/.local/share
cp -rf ~/.local/share/rofi backupfiles/user/.local/share
cp -rf ~/.local/share/applications backupfiles/user/.local/share

cp -rf ~/.config/dunst backupfiles/user/.config
cp -rf ~/.config/feh backupfiles/user/.config
cp -rf ~/.config/i3 backupfiles/user/.config
cp -rf ~/.config/i3blocks backupfiles/user/.config
cp -rf ~/.config/mpv backupfiles/user/.config
cp -rf ~/.config/nvim backupfiles/user/.config
cp -rf ~/.config/picom backupfiles/user/.config

cp -rf ~/.gtkrc-2.0 backupfiles/user

cp -rf /etc/systemd/logind.conf backupfiles/system/etc/systemd

#installation phase
echo "copyng rice files..."
sudo cp -rf system-files/* /
cp -rf user-files/* ~/
echo "installation complete now reboot or logout"
