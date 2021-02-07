#!/bin/bash

docker exec -it zoneminder bash -c "mysqldump zm --ignore-table=zm.Events --ignore-table=zm.Frames --ignore-table=zm.Logs --ignore-table=zm.Stats --ignore-table=zm.Events_Day --ignore-table=zm.Events_Hour --ignore-table=zm.Events_Month --ignore-table=zm.Events_Week > /root/zoneminder-backup.sql"
docker cp zoneminder:/root/zoneminder-backup.sql /home/derek/backup/backups/zoneminder-backup.sql
source /home/derek/backup/set-env.sh
restic backup --tag zoneminder /home/derek/backup/backups/zoneminder-backup.sql