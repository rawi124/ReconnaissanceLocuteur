#!/bin/bash

fichier_entree="files.tsv"
fichier_sortie="files_with_label.tsv"
fichier_path="paths.txt"

awk -F'\t' 'NR > 1 && $2 && $7 {print $2 "\t" $7}' "$fichier_entree" > "$fichier_sortie"

awk '{print $1}' "$fichier_sortie" > "$fichier_path"

