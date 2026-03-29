#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Drishti Choudhary | Course: Open Source Software

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

# Loop through each directory
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo "----------------------"

# Check VS Code config directory
CONFIG_DIR="$HOME/.config/Code"

if [ -d "$CONFIG_DIR" ]; then
    PERMS=$(ls -ld $CONFIG_DIR | awk '{print $1, $3, $4}')
    echo "VS Code Config Found:"
    echo "$CONFIG_DIR => $PERMS"
else
    echo "VS Code config directory not found"
fi
