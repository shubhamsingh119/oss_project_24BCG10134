#!/bin/bash


input_file="$1"
search_term="${2:-error}"   # Default keyword: error
match_count=0

# Function to print divider
separator() {
    echo "---------------------------------------------"
}


if [[ ! -f "$input_file" ]]; then
    echo "Error: File '$input_file' not found."
    exit 1
fi

# Process file and count matches
while read -r line_content; do
    if grep -qi "$search_term" <<< "$line_content"; then
        ((match_count++))
    fi
done < "$input_file"

echo "Keyword '$search_term' found $match_count times in $input_file"

separator
echo "Last 5 occurrences:"
grep -i "$search_term" "$input_file" | tail -n 5
separator
