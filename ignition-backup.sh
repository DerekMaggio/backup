#!/bin/bash

docker exec -it ignition bash -c "./gwcmd.sh -b /var/lib/ignition/data/ignition-backup.gwbk -y"
docker cp ignition:/var/lib/ignition/data/backup.gwbk /home/derek/backup/backups/ignition-backup.gwbk
source /home/derek/backup/set-env.sh
restic backup --tag ignition /home/derek/backup/backups/ignition-backup.gwbk