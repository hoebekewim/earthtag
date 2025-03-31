#!/bin/bash

# Maak de map .temp aan als die nog niet bestaat
mkdir -p .temp

# Base URL
BASE_URL="https://raw.githubusercontent.com/hoebekewim/earthtag/refs/heads/main/arrows"

# Loop door alle bestanden en download ze
for i in {000..359}; do
  FILE="arr-$(printf "%03d" $i).png"
  URL="$BASE_URL/$FILE"
  echo "Downloading $URL"
  curl -s -o ".temp/$FILE" "$URL"
done

echo "✅ Download complete. Files saved in .temp/"

