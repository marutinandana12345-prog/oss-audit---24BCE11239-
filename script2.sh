#!/bin/bash
# Script 2: FOSS Package Inspector (VLC)

PACKAGE="vlc"

echo "Checking package: $PACKAGE"
echo "--------------------------------"

# Debian/Ubuntu check
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed."
    dpkg -l | grep $PACKAGE
elif rpm -q $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."
    rpm -qi $PACKAGE | grep -E 'Version|License|Summary'
else
    echo "$PACKAGE is NOT installed."
fi

echo ""

case $PACKAGE in
    vlc) echo "VLC: Open-source multimedia player built by students in Paris." ;;
    firefox) echo "Firefox: Nonprofit browser defending the open web." ;;
    git) echo "Git: Distributed version control created by Linus Torvalds." ;;
    apache2|httpd) echo "Apache: Open-source web server powering millions of websites." ;;
    *) echo "Unknown open-source package." ;;
esac
