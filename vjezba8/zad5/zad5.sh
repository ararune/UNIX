#!/bin/bash

if [ $# -lt 1 ]
then
  echo "Skripta mora biti pokrenuta s najmanje jednim argumentom."
else
  echo "Pokrenuta je skripta naziva $0 s $# argumenata."
fi
