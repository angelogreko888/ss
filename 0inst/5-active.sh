#!/usr/bin/env bash

xdg-user-dirs-update
sudo ln -s /etc/sv/chronyd/ /var/service
sudo ln -s /etc/sv/dbus/ /var/service
sudo ln -s /etc/sv/polkitd/ /var/service
sudo ln -s /etc/sv/rtkit/ /var/service

echo "
_JAVA_AWT_WM_NONREPARENTING=1
EDITOR=nano
XDG_SESSION_TYPE=wayland
XDG_CURRENT_DESKTOP=sway
GDK_BACKEND=wayland
GTK_THEME=Adwaita:dark
QT_QPA_PLATFORMTHERE=qt6ct
QT_WAYLAND_DISABLE_WINDOWDWCORATION=1
CC=clang
CXX=clang++
MOZ_ENABLE_WAYLAND=1
QT_QPA_PLATFORM=wayland-egl
ELM_DISPLAY=wl
ECORE_EVAS_ENGINE=wayland-egl
ELM_ENGINE=wayland-egl
SDL_VIDEODRIVER=wayland
SDL_AUDIODRIVER=pipewire
" | sudo tee -a /etc/environment

sudo cp ~/vd/no/sd /usr/bin

sudo sed -i 's/25/50/' /etc/sv/zramen/conf

cat ~/vd/misc/fish_history >> ~/.local/share/fish/fish_history
cat ~/vd/misc/.bash_history >> ~/.bash_history


