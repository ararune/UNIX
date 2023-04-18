#!/bin/bash

# Provjeri broj argumenata
if [ $# -ne 1 ]; then
  echo "Očekivani broj argumenata je 1."
  exit 1
fi

# Izvrši ping i spremi izlaz u /dev/null
ping -c 1 $1 > /dev/null 2>&1

# Provjeri izlazni kod ping naredbe
if [ $? -eq 0 ]; then
  echo "Računalo $1 je dostupno"
else
  echo "Računalo $1 nije dostupno"
fi
