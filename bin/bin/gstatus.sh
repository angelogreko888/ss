#!/usr/bin/env bash

	cd  ~/.config/FreeTube/
	rsync history.db  ~/vd/freetube/.config/FreeTube/history.db
	rsync playlists.db  ~/vd/freetube/.config/FreeTube/playlists.db
	rsync profiles.db  ~/vd/freetube/.config/FreeTube/profiles.db
	rsync search-history.db  ~/vd/freetube/.config/FreeTube/search-history.db
	rsync settings.db  ~/vd/freetube/.config/FreeTube/settings.db


	cd ~/dwl
	rsync config.h ~/vd/dwl/config.h

	cd ~/vd
	git status
