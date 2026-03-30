#!/bin/bash

# Store some useful system information in variables
DISTRO=$(lsb_release -d | cut -f2)   # Linux distribution name
KERNEL=$(uname -r)                   # Kernel version
USER_NAME=$(whoami)                  # Current logged-in user
HOME_DIR=$HOME                       # Home directory of the user
UPTIME=$(uptime -p)                  # How long the system has been running
DATE=$(date)                         # Current date and time

# Display the collected information in a neat format
echo "---------------------------------------------"
echo "   Open Source Audit - System Identity"
echo "---------------------------------------------"
echo "Distribution : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Home Dir     : $HOME_DIR"
echo "Uptime       : $UPTIME"
echo "Date/Time    : $DATE"
echo "License      : GNU GPL v3 (Linux OS)"
echo "---------------------------------------------"
