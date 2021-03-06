#!/bin/bash

TARGET=$1

if [ "$#" -ne 1 ]; then
    echo "Usage: ./restore_latest_remote_access_snapshot.sh <target_dir>" 
fi

source /home/derek/backup/set-env.sh
restic restore latest --tag remote-access --target $TARGET