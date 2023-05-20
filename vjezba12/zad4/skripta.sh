#!/bin/bash

while read -r broj; do
	rijec=$(./broj $broj)
	echo $rijec >> brojevi
done < ~/materijali/brojevi09
