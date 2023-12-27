#!/bin/bash
# Ce script permet de convertir des fichiers .mp3 en fichiers .raw
# ces fichiers sont dans le repertoire input, un dossier output_raw sera crée pour stocker les fichiers en sortie 

input="/home/rawi/I322/DATA/bonMp3"
output="/home/rawi/I322/DATA/raw"

for fichier in $input/*.mp3 ; do
    fich=$(basename "$fichier" .mp3)
    sox "$fichier" "$output/$fich.raw"
done
