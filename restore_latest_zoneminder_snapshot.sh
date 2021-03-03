#!/bin/bash

TARGET=$1

if [ "$#" -ne 1 ]; then
    echo "Usage: ./restore_latest_zoneminder_snapshot.sh <target_dir>" 
fi

source /home/derek/backup/set-env.sh
restic restore latest --tag zoneminder --target $TARGET