#!/bin/bash

source /home/derek/backup/set-env.sh
restic forget \
    --prune \
    --tag ignition \
    --keep-daily 7 \
    --keep-weekly 3 \
    --keep-monthly 3

restic forget \
    --prune \
    --tag zoneminder \
    --keep-daily 7 \
    --keep-weekly 3 \
    --keep-monthly 3

restic forget \
    --prune \
    --tag mediawiki \
    --keep-daily 7 \
    --keep-weekly 3 \
    --keep-monthly 3