#!/usr/bin/env bash

mkdir -p /mnt/usr/db/xbps/keys
cp /usr/db/xbps/keys/* /mnt/usr/db/xbps/keys
REPO=https://repo-fastly.voidlinux.org/current/
XBPS_ARCH=x86_64 xbps-install -S -r /mnt -R "$REPO" base-container linux linux-firmware bash nano cpio kpartx eudev ncurses kbd NetworkManager booster 
xgenfstab -U /mnt > /mnt/etc/fstab
cat /mnt/etc/fstab

printf "\n\e[1;32m.....continue?....... \e[0m"
read

xchroot /mnt /bin/bash

