#!/usr/bin/env bash

	cd  ~/.config/FreeTube/
	rsync history.db  ~/ss/freetube/.config/FreeTube/history.db
	rsync playlists.db  ~/ss/freetube/.config/FreeTube/playlists.db
	rsync profiles.db  ~/ss/freetube/.config/FreeTube/profiles.db
	rsync search-history.db  ~/ss/freetube/.config/FreeTube/search-history.db
	rsync settings.db  ~/ss/freetube/.config/FreeTube/settings.db

	rsync /usr/bin/ss ~/ss/no/ss

	cd ~/ss
	git status
