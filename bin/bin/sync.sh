#!/usr/bin/env bash
handle_error() {
      echo "An error occurred on line $1"
      exit 1
  }

  trap 'handle_error $LINENO' ERR

flag="/var/tmp/$(basename -- $0).flag"

if [ -e "$flag" ] ;then
	[ $(date +%F) = $(date +%F -r "$flag") ] && exit 1
fi
touch "$flag"

while (true); do
	sleep 600
	cd  ~/.config/FreeTube/
	rsync history.db  ~/ss/freetube/.config/FreeTube/history.db
	rsync playlists.db  ~/ss/freetube/.config/FreeTube/playlists.db
	rsync profiles.db  ~/ss/freetube/.config/FreeTube/profiles.db
	rsync search-history.db  ~/ss/freetube/.config/FreeTube/search-history.db
	rsync settings.db  ~/ss/freetube/.config/FreeTube/settings.db

	cd ~/ss
	a=$(git status | wc -l) > /dev/null
	if [ $a -ne 4 ];then
	       	wget -q --spider http://google.com > /dev/null
        	if [ $? -eq 0 ]; then
		        git add . && git commit -m "save" && git push -u origin main
			notify-send --hint int:transient:1 " dotfiles synchronized "
	        fi
	else
		echo
	fi
done

