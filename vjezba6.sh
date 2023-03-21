#!/bin/bash

log=~/materijali/web_access.log
words=/usr/share/dict/words

for i in {1..14}; do
    mkdir -p ~/zad$i
done

grep "terminated$" $log > ~/zad1/result
grep -c "Windows 9[0-9]" $log > ~/zad2/result
grep -c "^$" $log > ~/zad3/result
grep "^[[:alpha:]]\{7\}bow$" $words > ~/zad4/result
grep "[^[:space:]]eth0" $log > ~/zad5/result
grep "\(.\)\1.*\1" $words > ~/zad6/result
grep -i "\b[a-hj-z]\.i\.\.i\.\.i\w*\b" $words > ~/zad7/result
grep -o "192\.168\.16\.[0-9]\{1,3\}" $log > ~/zad8/result
grep "i3-.*T$" /materijali/intel_processor_list > ~/zad9/result
curl https://personal.oss.unist.hr/~ngrgic/linux/rac | grep -i "racun" > ~/zad10/racun
curl https://personal.oss.unist.hr/~ngrgic/rac | grep -i "^p.*racunala.*" | wc -l > ~/zad11/racun-count
curl https://personal.oss.unist.hr/~ngrgic/rac | sed 's/racunar/racunal/g' > ~/zad12/racunalstvo
curl https://personal.oss.unist.hr/~ngrgic/rac | sed 's/racun/RACUN/g' | sed 's/Racun/RACUN/g' | sed 's/RACUN/racunal/g' > ~/zad13/racunalstvo
sed '/^$/d' ~/materijali/towns_spaced > ~/zad14/towns_spaced_noempty

