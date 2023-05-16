#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Skripta očekuje dva argumenta."
    exit 1
fi

broj1=$1
broj2=$2
zbroj=$((broj1 + broj2))

if [ $zbroj -ge 10 ]; then
    echo "Zbroj brojeva je veći ili jednak 10."
    exit 1
fi

rijec1=$(~/vjezba12/zad4/broj $broj1)
rijec2=$(~/vjezba12/zad4/broj $broj2)
rijecZbroj=$(~/vjezba12/zad4/broj $zbroj)

echo "$rijec1 plus $rijec2 je $rijecZbroj"
