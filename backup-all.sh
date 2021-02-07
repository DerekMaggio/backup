#!/bin/bash

echo -e "\n\n\n\n++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n+++++++++++++++++++++++++++++++++++++++++++++++++ `date +"%D %r"` +++++++++++++++++++++++++++++++++++++++++++++++++\n++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n" | tee -a /tmp/backup-ignition.log /tmp/backup-mediawiki.log /tmp/backup-zoneminder.log /tmp/backup-cleanup.log 2>&1
/home/derek/backup/ignition-backup.sh >> /tmp/backup-ignition.log 2>&1
/home/derek/backup/mediawiki-backup.sh >> /tmp/backup-mediawiki.log 2>&1
/home/derek/backup/zoneminder-backup.sh >> /tmp/backup-zoneminder.log 2>&1
/home/derek/backup/cleanup.sh >> /tmp/backup-cleanup.log 2>&1