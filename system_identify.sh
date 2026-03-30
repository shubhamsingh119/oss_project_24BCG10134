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
