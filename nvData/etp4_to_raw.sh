#!/bin/bash
# Ce script permet de convertir des fichiers .mp3 en fichiers .raw
# ces fichiers sont dans le repertoire input, un dossier output_raw sera crée pour stocker les fichiers en sortie 
input="/home/rawi/I322/cv-corpus-16.0-2023-12-06/fr/clips"
output="/home/rawi/I322/raw"
paths_file="/home/rawi/ReconnaissanceLocuteur/nvData/fich_sortie/paths.txt"

for fichier in $input/*.mp3 ; do
    fich=$(basename "$fichier" .mp3)

    # Vérifier si le fichier existe dans paths.txt
    if grep -q "$fich" "$paths_file"; then
        sox "$fichier" "$output/$fich.raw"
    fi
done
