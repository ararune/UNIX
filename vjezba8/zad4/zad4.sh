#!/bin/bash

if [ $# -ne 2 ]
then
  echo "Ova skripta očekuje točno dva argumenta"
  exit 1
fi

num1=$1
num2=$2

sum=$((num1 + num2))

echo "Zbroj brojeva $num1 i $num2 je $sum."
