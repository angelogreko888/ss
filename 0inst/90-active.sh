#!/usr/bin/env bash

sudo ln -s /etc/sv/chronyd/ /var/service
sudo ln -s /etc/sv/dbus/ /var/service
sudo ln -s /etc/sv/polkitd/ /var/service
sudo ln -s /etc/sv/rtkit/ /var/service
sudo ln -s /etc/sv/adb/ /var/service
sudo ln -s /etc/sv/power-profiles-daemon/ /var/service
sudo ln -s /etc/sv/ufw/ /var/service

sudo sed -i 's/25/50/' /etc/sv/zramen/conf
sudo ln -s /etc/sv/zramen/ /var/service

cat ~/ss/misc/fish_history >> ~/.local/share/fish/fish_history
cat ~/ss/misc/.bash_history >> ~/.bash_history

sudo cp ~/ss/no/ss /usr/bin/


echo "
if [ -z "$WAYLAND_DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ] ; then
    exec /usr/bin/ss
fi
" | tee -a ~/.bach_profile
