#!/bin/bash
# Ce script permet de convertir des fichiers .mp3 en fichiers .raw
# ces fichiers sont dans le repertoire input, un dossier output_raw sera crée pour stocker les fichiers en sortie 

input="/scratch/I322/DATA/clips"
output="/scratch/rbenamir/reconnaissance/data"
mkdir -p "$output_raw"

for fichier in $input/*.mp3 ; do
    fich=$(basename "$fichier" .mp3)
    sox "$fichier" "$output/$fich.raw"
done
