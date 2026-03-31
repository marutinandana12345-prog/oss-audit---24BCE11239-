#!/bin/bash
# Script 3: Disk and Permission Auditor

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
VLC_CONFIG="$HOME/.config/vlc"

echo "Directory Audit Report"
echo "--------------------------------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo ""
echo "Checking VLC Config Directory..."

if [ -d "$VLC_CONFIG" ]; then
    CONF_PERMS=$(ls -ld $VLC_CONFIG | awk '{print $1, $3, $4}')
    echo "$VLC_CONFIG exists."
    echo "Permissions: $CONF_PERMS"
else
    echo "VLC config directory not found (run VLC once to create it)."
fi
