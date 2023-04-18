#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Morate unijeti putanju do direktorija kao argument."
  exit 1
fi

dir=$1
count=0

if [ ! -d "$dir" ]; then
  echo "Direktorij $dir ne postoji."
  exit 1
fi

for file in "$dir"/*; do
  if [ -f "$file" ] && [ ! -s "$file" ]; then
    count=$((count+1))
  fi
done

echo "U direktoriju $dir ima $count praznih datoteka."

