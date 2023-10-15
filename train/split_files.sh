#!/bin/bash

fichier_entree="files.tsv"

IFS=$'\t' read -r -a colonnes < "$fichier_entree"

for colonne in "${colonnes[@]}"; do
    nom_fichier=$(echo "$colonne" | tr ' ' '_')
    echo "$colonne" > "${nom_fichier}.txt"
done

tail -n +2 "$fichier_entree" | while IFS=$'\t' read -r -a ligne; do
    for index in "${!ligne[@]}"; do
        nom_fichier="${colonnes[index]}"
        nom_fichier=$(echo "$nom_fichier" | tr ' ' '_')
        valeur="${ligne[index]}"
        echo "$valeur" >> "${nom_fichier}.txt"
    done
done

echo "Traitement terminé. Les fichiers de colonnes ont été créés."

