#!/bin/bash

# Provjeri je li argument zadana putanja
if [ $# -ne 1 ]; then
  echo "Greška: Potrebna je samo jedna putanja kao argument!"
  exit 1
fi

# Provjeri je li putanja datoteka ili direktorij
if [ -f "$1" ]; then
  echo "Putanja $1 vodi do datoteke."
elif [ -d "$1" ]; then
  echo "Putanja $1 vodi do direktorija."
else
  echo "Putanja $1 ne vodi ni do datoteke ni do direktorija."
fi
