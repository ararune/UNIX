#!/bin/bash

# Path to etc-passwd file
file="$HOME/materijali/etc-passwd"

# Check if the file exists
if [ ! -f "$file" ]; then
  echo "File $file does not exist."
  exit 1
fi

awk -F: '$4 == 101 {print $1}' $file > users101
