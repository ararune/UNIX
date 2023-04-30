#!/bin/bash

# Kreiranje privremenog direktorija
tmpdir=$(mktemp -d)

# Kopiranje originalne datoteke u privremeni direktorij
cp ~/materijali/brojevi505 $tmpdir

# Pozicioniranje u privremeni direktorij
cd $tmpdir

# Kompilacija programa mod
gcc ~/vjezba10/zad5/mod.c -o mod

# Petlja koja čita datoteku red po red
while read line; do
    # Izdvajanje broja iz retka
    num=$(echo $line | awk '{print $1}')

    # Računanje apsolutne vrijednosti
    abs=$(./mod $num)

    # Zamjena izvornog broja apsolutnom vrijednošću
    newline=$(echo $line | sed "s/$num/$abs/g")

    # Ispisivanje novog retka u privremenu datoteku
    echo $newline >> brojevi505-mod
done < brojevi505

# Kopiranje izmijenjene datoteke u tekući direktorij
cp brojevi505-mod $OLDPWD

# Brisanje privremenog direktorija
rm -rf $tmpdir
