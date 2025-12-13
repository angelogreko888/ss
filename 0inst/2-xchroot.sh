#!bin/bash

printf "\e[1;32m.......Enter Country.......: \n\e[0m"

select  cn in Israel Cyprus;do

	case $cn in

        Israel) 
		ln -sf /usr/share/zoneinfo/Asia/Jerusalem /etc/localtime
		break ;;

        Cyprus) 
		ln -sf /usr/share/zoneinfo/Europe/Nicosia /etc/localtime
		break ;;

	*) 
		printf "\n\e[1;31m... !!! ERROR Enter Your Choice !!! ... \e[0m" >&2

	esac

done

echo "greco" | tee /etc/hostname

sed -i '131s/#//' /etc/default/libc-locales

useradd -mG wheel,audio,video,storage,optical,plugdev,input vago

printf "\n\e[1;32m.....Enter Root password :\e[0m"
read rp
echo root:$rp | chpasswd 

printf "\n\e[1;32m.....Enter User password: \e[0m"
read up
echo vago:$up | chpasswd

echo "repository=https://https://repo-fastly.voidlinux.org/current/" | tee /etc/xbps.d/00-repository-main.conf

xbps-remove -F dracut

xbps-reconfigure -fa

printf "\n\e[1;32m.....DONE!!!..... exit & umount -R /mnt & reboot :\e[0m"
