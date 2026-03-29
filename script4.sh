#!/bin/bash
# Script 4: Log File Analyzer
# Author: Drishti Choudhary | Course: Open Source Software

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# If file is empty, wait and retry
while [ ! -s "$LOGFILE" ]; do
    echo "File is empty. Waiting..."
    sleep 2
done

# Read file line by line and count keyword
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# Print last 5 matching lines
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
