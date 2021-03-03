#!/bin/bash

TARGET=$1

if [ "$#" -ne 1 ]; then
    echo "Usage: ./restore_latest_ignition_snapshot.sh <target_dir>" 
fi

source /home/derek/backup/set-env.sh
restic restore latest --tag ignition --target $TARGET