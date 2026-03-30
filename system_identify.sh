#!/bin/bash

os_name=$(lsb_release -d | awk -F"\t" '{print $2}')
kernel_ver=$(uname -r)
current_user=$(id -un)
user_home_dir="$HOME"
system_uptime=$(uptime -p)
current_datetime=$(date)

# Function to print separator
print_line() {
    echo "---------------------------------------------"
}

# Display output
print_line
echo "   Open Source Audit - System Identity."
print_line
printf "%-13s : %s\n" "Distribution" "$os_name"
printf "%-13s : %s\n" "Kernel" "$kernel_ver"
printf "%-13s : %s\n" "User" "$current_user"
printf "%-13s : %s\n" "Home Dir" "$user_home_dir"
printf "%-13s : %s\n" "Uptime" "$system_uptime"
printf "%-13s : %s\n" "Date/Time" "$current_datetime"
printf "%-13s : %s\n" "License" "GNU GPL v3 (Linux OS)"
print_line
#!/bin/bash
# Script 1: System Identity Report
# Author: [Your Name]
# Course: Open Source Software
# Purpose: Show basic system identity details

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
