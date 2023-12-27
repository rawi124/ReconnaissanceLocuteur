#!/bin/bash

#recupere le path des bons fichiers contenat le genre et tous les attributs

fichier_source="/home/rawi/ReconnaissanceLocuteur/rawi/script/fich_sortie/files_clean.tsv"
fichier_destination="/home/rawi/ReconnaissanceLocuteur/rawi/script/fich_sortie/paths.txt"

awk -F'\t' '/(male|female)/ {print $2 ".mp3"}' "$fichier_source" > "$fichier_destination"


