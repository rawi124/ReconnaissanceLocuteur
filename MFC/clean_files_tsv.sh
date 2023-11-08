#!/bin/bash
#recupere les fichiers qui seront utilisé dans le traitement
#en ne gardant que les lignes contenant 8 colonnes

fichier_entree="files.tsv"

fichier_sortie="files_clean.tsv"

> "$fichier_sortie"

while IFS=$'\t' read -r -a elements; do
    if [ "${#elements[@]}" -eq 8 ]; then
        echo -e "${elements[*]}" >> "$fichier_sortie"
    fi
done < "$fichier_entree"

echo "Filtrage des lignes complètes terminé."

