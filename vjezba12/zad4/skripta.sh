#!/bin/bash

# Pokretanje petlje za čitanje ulazne datoteke
while read -r broj; do
    # Pozivanje pomoćnog programa "broj" za konverziju jednoznamenkastog broja u riječ
    rijec=$(./broj $broj)

    # Ispisivanje konvertirane riječi u izlaznu datoteku "brojevi"
    echo $rijec >> brojevi
done < ~/materijali/brojevi09
