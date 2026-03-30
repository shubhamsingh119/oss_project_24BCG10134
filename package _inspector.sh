#!/bin/bash

pkg_name="python3"   # Target package

# Function to check installation
check_package() {
    dpkg -l | grep -wq "$pkg_name"
}

# Function to display version
show_version() {
    dpkg -l | awk -v pkg="$pkg_name" '$2==pkg {print "Version: " $3}'
}

# Main logic
if check_package; then
    echo "$pkg_name is installed."
    show_version
else
    echo "$pkg_name is NOT installed."
fi

case "$pkg_name" in
    python3)
        echo "Python: a language shaped entirely by community."
        ;;
    httpd)
        echo "Apache: the web server that built the open internet."
        ;;
    mysql)
        echo "MySQL: open source at the heart of millions of apps."
        ;;
    vlc)
        echo "VLC: plays anything, built by students in Paris."
        ;;
    *)
        echo "Unknown package."
        ;;
esac
