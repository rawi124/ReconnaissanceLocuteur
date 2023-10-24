#!/bin/bash
#recupere le chemin des fichiers mp3 qu on va traiter

fichier_entree="files.tsv"

fichier_sortie="paths.txt"

> "$fichier_sortie"

while IFS=$'\t' read -r -a colonnes; do
    if [ ${#colonnes[@]} -eq 8 ]; then
        echo "${colonnes[1]}.mp3" >> "$fichier_sortie"
    fi
done < "$fichier_entree"


