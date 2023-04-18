#!/bin/bash

start=$1

while [ $start -le 100 ]
do
  echo $start
  start=$((start+2))
done

