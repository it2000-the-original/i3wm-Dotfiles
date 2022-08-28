#!/bin/sh

#file variables
dunst=~/.config/dunst
feh=~/.config/feh
i3=~/.config/i3
i3blocks=~/.config/i3blocks
mpv=~/.config/mpv
nvim=~/.config/nvim
picom=~/.config/picom
gtk3=~/.config/gtk-3.0
gtk4=~/.config/gtk-4.0
gtk2=~/.gtkrc-2.0

#creating backupfiles directory
mkdir -p backupfiles/user/.local/share
mkdir -p backupfiles/user/.config
mkdir -p backupfiles/system/etc/systemd

#copy the backup files in the backufiles folder
echo "copyng backup files..."

if [ -d "$dunst" ]; then
    cp -rf ~/.config/dunst backupfiles/user/.config
fi

if [ -d "$feh" ]; then
    cp -rf ~/.config/feh backupfiles/user/.config
fi

if [ -d "$i3" ]; then
    cp -rf ~/.config/i3 backupfiles/user/.config
fi

if [ -d "$i3blocks" ]; then
    cp -rf ~/.config/i3blocks backupfiles/user/.config
fi

if [ -d "$mpv" ]; then
    cp -rf ~/.config/mpv backupfiles/user/.config
fi

if [ -d "$nvim" ]; then
    cp -rf ~/.config/nvim backupfiles/user/.config
fi

if [ -d "$picom" ]; then
    cp -rf ~/.config/picom backupfiles/user/.config
fi

if [ -d "$gtk3" ]; then
    cp -rf ~/.config/gtk-3.0 backupfiles/user/.config
fi

if [ -d "$gtk4" ]; then
    cp -rf ~/.config/gtk-4.0 backupfiles/user/.config
fi

if [ -f "$gtk2" ]; then
    cp -rf ~/.gtkrc-2.0 backupfiles/user
fi

cp -rf /etc/systemd/logind.conf backupfiles/system/etc/systemd

#installing gtk themes
echo "Cloning system themes repositories..."

git clone https://github.com/vinceliuice/Graphite-gtk-theme.git
git clone https://github.com/vinceliuice/Graphite-cursors.git
git clone https://github.com/vinceliuice/Tela-icon-theme.git

echo "installing graphite gtk theme..."
cd Graphite-gtk-theme
sudo ./install.sh --tweaks rimless black
cd ..

echo "installing graphite cursors..."
cd Graphite-cursors
sudo ./install.sh
cd ..

echo "installing tela icon theme..."
cd Tela-icon-theme
sudo ./install.sh grey
cd ..

#installation phase
echo "copyng rice files..."
sudo cp -rf system-files/* /
cp -rf user-files/. ~/
echo "installation complete now reboot or logout"
