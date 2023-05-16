#!/bin/bash

# Briši stare direktorije
find . -maxdepth 1 -type d -name "zad*" -exec rm -rf {} \;
echo "$(date) - Stari direktoriji obrisani" >> dircreator.log

# Unesi broj zadataka u vježbi
read -p "Unesite broj zadataka u vježbi: " num_tasks

# Stvori nove direktorije
for ((i=1; i<=num_tasks; i++))
do
  dir_name="zad$i"
  mkdir "$dir_name"
  echo "$(date) - Direktorij $dir_name stvoren" >> dircreator.log
done
