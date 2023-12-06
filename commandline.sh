#!/bin/bash

DATASET_PATH="/Users/onurozansunger/Downloads/dataset.csv"

# Define column numbers based on the provided structure
DATETIME_COLUMN=2
DURATION_COLUMN=3
TITLE_COLUMN=4
USER_ID_COLUMN=8

# 1. Find the most-watched Netflix title
echo "Calculating the most-watched Netflix title..."
tail -n +2 "$DATASET_PATH" |
awk -F, -v duration_col="$DURATION_COLUMN" -v title_col="$TITLE_COLUMN" 'NR>1 {gsub(/"/, "", $title_col); duration[$title_col]+=$duration_col} END {max_duration=0; for (title in duration) if (duration[title] > max_duration) {max_duration=duration[title]; max_title=title}} END {print "Title:", max_title, "Total Duration:", max_duration}'

# 2. Calculate the average time between subsequent clicks
echo "Calculating the average time between subsequent clicks..."
tail -n +2 "$DATASET_PATH" |
cut -d, -f"$DATETIME_COLUMN" |
tr -d '"' |
xargs -I {} date -jf "%Y-%m-%d %H:%M:%S" {} +%s |
awk 'NR > 1 {diff = $1 - prev; sum += diff; count++} {prev = $1} END {if (count > 0) print "Average time (seconds):", sum / count; else print "No subsequent clicks to calculate average time."}'

# 3. Find the ID of the user that has spent the most time on Netflix
echo "Finding the ID of the user that has spent the most time on Netflix..."
tail -n +2 "$DATASET_PATH" | 
awk -F, -v duration_col="$DURATION_COLUMN" -v user_col="$USER_ID_COLUMN" 'NR>1 {gsub(/"/, "", $user_col); if ($user_col ~ /^[a-f0-9]+$/) duration[$user_col]+=$duration_col} END {for (user in duration) if (duration[user] > max_duration) {max_duration=duration[user]; max_user=user}} END {print "User ID:", max_user, "Total Duration:", max_duration}'
