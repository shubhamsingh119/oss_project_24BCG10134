#!/bin/bash

echo "Answer three questions to generate your manifesto."
echo ""

# Collect user input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Write the manifesto to a text file
echo "On $DATE, I declare my open-source manifesto." > $OUTPUT
echo "I use $TOOL daily, which reminds me that $FREEDOM is essential." >> $OUTPUT
echo "In the spirit of open source, I would build $BUILD and share it freely." >> $OUTPUT

echo "Manifesto saved to $OUTPUT"
echo "---------------------------------------------"
cat $OUTPUT
echo "---------------------------------------------"
