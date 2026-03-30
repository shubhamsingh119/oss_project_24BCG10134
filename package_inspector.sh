#!/bin/bash

PACKAGE="python3"   # The package we want to check

# First check if the package is installed
if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."
    # Print version information
    dpkg -l | grep $PACKAGE | awk '{print "Version: "$3}'
else
    echo "$PACKAGE is NOT installed."
fi

# Print a short philosophy note depending on the package
case $PACKAGE in
    python3) echo "Python: a language shaped entirely by community." ;;
    httpd)   echo "Apache: the web server that built the open internet." ;;
    mysql)   echo "MySQL: open source at the heart of millions of apps." ;;
    vlc)     echo "VLC: plays anything, built by students in Paris." ;;
    *)       echo "Unknown package." ;;
esac
