#!/usr/bin/env bash

  wget -q --spider http://google.com

  if [ $? -eq 0 ]; then

	 cd  ~/.config/FreeTube/
        rsync history.db  ~/ss/freetube/.config/FreeTube/history.db
        rsync playlists.db  ~/ss/freetube/.config/FreeTube/playlists.db
        rsync profiles.db  ~/ss/freetube/.config/FreeTube/profiles.db
        rsync search-history.db  ~/ss/freetube/.config/FreeTube/search-history.db
        rsync settings.db  ~/ss/freetube/.config/FreeTube/settings.db

        rsync /usr/bin/ss ~/ss/no/ss

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

	        cat $ht >> $HOME/ss/misc/$h
	        sed -i '/git remote set-url origin /d' $HOME/ss/misc/$h
	        awk -i inplace '!seen[$0]++' $HOME/ss/misc/$h
	        sed -i '/when:/d'  $HOME/ss/misc/$h

		done

	cd ~/ss
	git add . && git commit -m "commit" && git push -u origin main

  else
	  echo exit
  fi
