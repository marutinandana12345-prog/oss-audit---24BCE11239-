#!/bin/bash
# Script 1: System Identity Report
# Author: Your Name | Course: Open Source Software

STUDENT_NAME="Your Name"
SOFTWARE_CHOICE="VLC Media Player"

DISTRO=$(grep "^PRETTY_NAME" /etc/os-release | cut -d= -f2 | tr -d '"')
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE=$(date)

echo "==========================================="
echo " Open Source Audit — $STUDENT_NAME"
echo "==========================================="
echo "Chosen Software : $SOFTWARE_CHOICE"
echo "Distribution    : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "User            : $USER_NAME"
echo "Home Directory  : $HOME_DIR"
echo "Uptime          : $UPTIME"
echo "Date & Time     : $DATE"
echo ""
echo "Linux Kernel License: GPL v2"
echo "==========================================="
