#!/bin/bash
# Ce script permet de convertir des fichiers .mp3 en fichiers .raw
# ces fichiers sont dans le repertoire input, un dossier output_raw sera crée pour stocker les fichiers en sortie 

input="data/data_mp3"
output_raw="data/data_raw"
mkdir -p "$output_raw"

for fichier in $input/*.mp3 ; do
    fich=$(basename "$fichier" .mp3)
    sox "$fichier" "$output_raw/$fich.raw"
done
