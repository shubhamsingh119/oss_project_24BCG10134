#!/bin/bash

echo "Please answer the following to generate your manifesto:"
echo

# Take user inputs
read -p "1. Mention one open-source tool you use daily: " tool_name
read -p "2. What does 'freedom' mean to you (one word)? " freedom_word
read -p "3. What would you like to create and share openly? " build_item

# Generate date and filename
current_date=$(date +"%d %B %Y")
file_name="manifesto_$(id -un).txt"

# Function to write manifesto
create_manifesto() {
    echo "On $current_date, I present my open-source manifesto." > "$file_name"
    echo "Using $tool_name regularly reminds me that $freedom_word is vital." >> "$file_name"
    echo "I aspire to create $build_item and contribute it freely to everyone." >> "$file_name"
}

# Create file and display output
create_manifesto

echo "Manifesto saved to $file_name"
echo "---------------------------------------------"
cat "$file_name"
echo "---------------------------------------------"
