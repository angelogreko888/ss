#!/usr/bin/env bash

sudo xbps-install -S

sudo ln -s /etc/sv/NetworkManager /usr/service/
sudo ln -s /etc/sv/dbus /usr/service/

# nameserver /etc/resolve.conf
printf "\e[1;32m.......Enter Country.......: \n\e[0m"

select  cn in Israel Cyprus;do

        case $cn in

        Israel) 
		echo "nameserver 192.168.0.1" | sudo tee /etc/resolve.conf
                break ;;

        Cyprus) 
		echo "nameserver 192.168.43.1" | sudo tee /etc/resolve.conf
                break ;;

        *) 
                printf "\n\e[1;31m... !!! ERROR Enter Your Choice !!! ... \e[0m" >&2

        esac

done

sudo xbps-install -S

sudo xbps-install pam_rundir xdg-user-dirs
echo"-session        optional        pam_rundir.so" | sudo tee -a /etc/pam.d/login
xdg-user-dirs-update
