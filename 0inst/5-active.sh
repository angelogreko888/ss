#!/usr/bin/env bash

xdg-user-dirs-update
sudo ln -s /etc/sv/chronyd/ /var/service
sudo ln -s /etc/sv/dbus/ /var/service
sudo ln -s /etc/sv/polkitd/ /var/service
sudo ln -s /etc/sv/rtkit/ /var/service

sudo sed -i 's/25/50/' /etc/sv/zramen/conf

cat ~/ss/misc/fish_history >> ~/.local/share/fish/fish_history
cat ~/ss/misc/.bash_history >> ~/.bash_history


