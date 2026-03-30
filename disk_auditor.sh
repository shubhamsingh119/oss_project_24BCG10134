#!/bin/bash

# Directories to analyze
paths=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

# Function to print header/footer
draw_line() {
    echo "---------------------------------------------"
}

draw_line
echo "   Directory Audit Report."
draw_line

# Iterate through directories
for path in "${paths[@]}"; do
    if [[ -d "$path" ]]; then
        
        access_info=$(ls -ld "$path" | awk '{print $1, $3, $4}')
        
        dir_size=$(du -sh "$path" 2>/dev/null | awk '{print $1}')
        
        printf "%-12s => Permissions: %s | Size: %s\n" "$path" "$access_info" "$dir_size"
    else
        echo "$path does not exist on this system."
    fi
done

# Additional check for Python config directory
config_dir="/etc/python3"

if [[ -d "$config_dir" ]]; then
    config_info=$(ls -ld "$config_dir" | awk '{print $1, $3, $4}')
    echo "$config_dir exists => $config_info"
else
    echo "Python config directory not found."
fi

draw_line
