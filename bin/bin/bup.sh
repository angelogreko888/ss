
#!/bin/bash

echo "Sync Started"

#data
#rsync -a --exclude 'vago' --exclude '.cache' --exclude 'ss' --exclude 'dwl' /home/vago/ /mnt/data/vago/ --delete

rsync -a /home/vago/ss/ /mnt/data/sync-vago/ss/ --delete

rsync -a /home/vago/vago/ /mnt/data/sync-vago/vago/ --delete

rsync -a /home/vago/dwl/ /mnt/data/sync-vago/dwl/ --delete

#vt
rsync -a /home/vago/vago/ /mnt/vt/sync-vago/vago/ --delete

rsync -a /home/vago/ss/ /mnt/vt/sync-vago/ss/ --delete

rsync -a /home/vago/dwl/ /mnt/vt/sync-vago/dwl/ --delete

echo "Sync Finished"

