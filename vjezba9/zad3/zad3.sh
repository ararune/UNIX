#!/bin/bash

# Loop through each file in the current directory
for file in *
do
  # Check if the file is a regular file
  if [ -f "$file" ]
  then
    # Create a backup copy of the file
    cp "$file" "${file%.*}.bak"
  fi
done

