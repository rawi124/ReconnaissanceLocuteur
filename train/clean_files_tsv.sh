#!/bin/bash

fichier_entree="files.tsv"

fichier_sortie="files_clean.tsv"

> "$fichier_sortie"

while IFS=$'\t' read -r -a elements; do
    if [ "${#elements[@]}" -eq 8 ]; then
        echo -e "${elements[*]}" >> "$fichier_sortie"
    fi
done < "$fichier_entree"

echo "Filtrage des lignes complètes terminé."

