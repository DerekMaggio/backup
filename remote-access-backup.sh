#!/bin/bash
source /home/derek/backup/set-env.sh
restic backup --exclude data/certbot --tag remote-access /home/derek/remote-access