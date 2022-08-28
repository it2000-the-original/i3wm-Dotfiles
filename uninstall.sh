#!/bin/sh

#WARNING DO NOT EXECUTE THIS FILE IF YOU DON'T HAVE
#INSTALLED THE DOTFILES

if [-d "backupfiles"]; then

    echo "Removing themes and system files..."
    sudo rm -rf /usr/share/themes/Graphite-Dark-compact
    sudo rm -rf /usr/share/themes/Graphite-Dark-compact-hdpi
    sudo rm -rf /usr/share/themes/Graphite-Dark-compact-xhdpi
    sudo rm -rf /usr/share/icons/Graphite-dark-cursors
    sudo rm -rf /usr/share/icons/Tela-grey-dark
    sudo rm -rf /etc/systemd/logind.conf

    echo "Removing configuration files..."
    rm -rf ~/.local/share/applications/feh.desktop
    rm -rf ~/.local/share/applications/picom.desktop
    rm -rf ~/.local/share/applications/rofi.desktop
    rm -rf ~/.local/share/applications/rofi-theme-selector.desktop
    rm -rf ~/.local/share/backgrounds/wave-dark.png
    rm -rf ~/.local/share/backgrounds/wave-dark-arch.png
    rm -rf ~/.local/share/nvim
    rm -rf ~/.local/share/rofi

    rm -rf ~/.config/dunst
    rm -rf ~/.config/feh
    rm -rf ~/.config/i3
    rm -rf ~/.config/i3blocks
    rm -rf ~/.config/mpv
    rm -rf ~/.config/nvim
    rm -rf ~/.config/picom
    rm -rf ~/.config/gtk-3.0
    rm -rf ~/.config/gtk-4.0
    rm -rf ~/.gtkrc-2.0

    echo "Copyng backup files..."
    sudo cp -rf backupfiles/system/* /
    cp -rf backupfiles/user/. ~/
    echo "uninstallation complete now reboot"
else
    echo "The dotfiles are not installed"
fi
