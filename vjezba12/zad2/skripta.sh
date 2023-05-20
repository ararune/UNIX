#!/bin/bash

# Request user input for the number of exercises
read -p "Enter the number of exercises in the assignment: " broj_zadataka

# Remove old directories with format "zadX"
rm -rf zad*
echo "Directories with format zadX deleted."

# Create new directories using brace expansion and log the messages
for ((i=1; i<=broj_zadataka; i++))
do
    mkdir "zad${i}"
    echo "$(date) - Directory zad${i} created" >> dircreator.log
done

