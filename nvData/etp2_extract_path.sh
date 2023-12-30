#!/bin/bash

#recupere le path des bons fichiers contenat le genre et tous les attributs

fichier_source="/home/rawi/ReconnaissanceLocuteur/nvData/fich_sortie/files_clean.tsv"
fichier_destination="/home/rawi/ReconnaissanceLocuteur/nvData/fich_sortie/paths.txt"

awk -F'\t' '{print $2}' "$fichier_source" | xargs -I {} basename {} ".mp3" > "$fichier_destination"

