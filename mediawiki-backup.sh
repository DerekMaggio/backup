#!/bin/bash

docker exec -it mediawiki bash -c "php /var/www/mediawiki/maintenance/sqlite.php --vacuum --backup-to /var/www/mediawiki/mediawiki-backup.sqlite"
docker cp mediawiki:/var/www/mediawiki/mediawiki-backup.sqlite /home/derek/backup/backups/mediawiki-backup.sqlite
source /home/derek/backup/set-env.sh
restic backup --tag mediawiki /home/derek/backup/backups/mediawiki-backup.sqlite