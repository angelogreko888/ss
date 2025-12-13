#!/bin/bash


if [ -f ~/.bashrc ];then
	rm ~/.bashrc
fi


cd ~/ss

stow=(
backgrounds
bin
fastfetch
fish
foot
home
waybar
flameshot
icons
mako

)

for ST in "${stow[@]}"; do
	stow "$ST"
done

plst=(
kanshi

)

for PLST in "${plst[@]}";do
	printf "\n\e[1;32m... Do You Want To stow "$PLST"  ?  ... : \n\e[0m"
	select  yn in yes no;do
		case $yn in
		yes)
			stow "$PLST"
			break ;;
		no)
			printf "\n\e[1;32m... OK ... : \n\e[0m"
			break ;;
		*)
			printf "\n\e[1;31m... !!! ERROR Enter Your Choice !!! ... \e[0m" >&2
		esac
	done
done



cd ~
