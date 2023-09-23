#!/bin/bash

# Define the source and destination directories for backup
source_dir="/home/userland/dbms"
backup_dir="/home/userland/new"

# Create a timestamp to include in the backup folder name
timestamp=$(date +"%Y%m%d%H%M%S")

# Check if the source directory exists
if [ ! -d "$source_dir" ]; then
  echo "Source directory does not exist. Backup aborted."
  exit 1
fi

# Create a backup folder with a timestamp
backup_folder="$backup_dir/backup_$timestamp"
mkdir -p "$backup_folder"

# Copy the contents of the source directory to the backup folder
cp -r "$source_dir"/* "$backup_folder"

# Check if the copy operation was successful
if [ $? -eq 0 ]; then
  echo "Backup completed successfully. Files are stored in: $backup_folder"
else
  echo "Backup failed."
fi
