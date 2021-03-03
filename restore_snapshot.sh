#!/bin/bash

SNAPSHOT_ID=$1
TARGET=$2

if [ "$#" -ne 2 ]; then
    echo "Usage: ./restore_snapshot.sh <snapshot_id> <target_dir>" 
fi

source /home/derek/backup/set-env.sh
restic restore $SNAPSHOT_ID --target $TARGET