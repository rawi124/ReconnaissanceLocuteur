#!/bin/bash

fichier_entree="files.tsv"

fichier_sortie="paths.txt"

> "$fichier_sortie"

while IFS=$'\t' read -r -a colonnes; do
    if [ ${#colonnes[@]} -eq 8 ]; then
        echo "${colonnes[1]}" >> "$fichier_sortie"
    fi
done < "$fichier_entree"

echo "Extraction des chemins terminée. Les chemins sont stockés dans '$fichier_sortie'."

