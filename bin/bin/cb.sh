#!/usr/bin/env bash
handle_error() {
      echo "An error occurred on line $1"
      exit 1
  }

  trap 'handle_error $LINENO' ERR


a=$(inxi -Fxz | grep product | awk '{print $6}')

if [ $a == LOQ ];then
cp=q
elif [ $a == Lenovo ];then
cp=l
elif [ $a == Dell ];then
cp=d
fi

case $cp in
        q)  ;;
        l)  ;;
        d)  ;;
        *) echo "enter a laptop name" && exit 0 ;;
esac

#xbps-query -l > $HOME/vd/misc/$cp.lst

bh=~/.bash_history
fh=~/.local/share/fish/fish_history
lst=(
~/.bash_history
~/.local/share/fish/fish_history
)
for ht in "${lst[@]}";do
	if [ $ht == $bh ]; then
	h=.bash_history
	elif [ $ht == $fh ]; then
	h=fish_history
	fi

	cat $ht >> $HOME/vd/misc/$h
	sed -i '/git remote set-url origin /d' $HOME/vd/misc/$h
	awk -i inplace '!seen[$0]++' $HOME/vd/misc/$h
	sed -i '/when:/d'  $HOME/vd/misc/$h

done
