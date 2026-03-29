#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Drishti Choudhary | Course: Open Source Software

echo "Answer three questions to generate your manifesto."
echo ""

# Take user input
read -p "1. One open-source tool you use daily: " TOOL
read -p "2. One word for freedom: " FREEDOM
read -p "3. One thing you would build: " BUILD

DATE=$(date '+%d %B %Y')
USER=$(whoami)
OUTPUT="manifesto_$USER.txt"

# Write manifesto to file
echo "Open Source Manifesto" > $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT
echo "I use $TOOL every day, which represents the power of open collaboration." >> $OUTPUT
echo "For me, freedom means $FREEDOM in the digital world." >> $OUTPUT
echo "In the future, I aim to build $BUILD and share it openly." >> $OUTPUT
echo "I believe open source drives innovation and collective growth." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo "--------------------------"
cat $OUTPUT
