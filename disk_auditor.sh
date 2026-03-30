#!/bin/bash

# List of directories to check
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "---------------------------------------------"
echo "   Directory Audit Report."
echo "---------------------------------------------"

# Loop through each directory and print details
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')   # Permissions, owner, group
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)         # Human-readable size
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

# Extra check for Python configuration directory
if [ -d "/etc/python3" ]; then
    echo "/etc/python3 exists => $(ls -ld /etc/python3 | awk '{print $1, $3, $4}')"
else
    echo "Python config directory not found."
fi
