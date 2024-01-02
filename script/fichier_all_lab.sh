#!/bin/bash

input="/home/dd/HTK_PROJECT/script/clean_files/files_with_label.tsv"
path="/home/dd/HTK_PROJECT/data/mfc"
output="/home/dd/HTK_PROJECT/traitement/phones0_all.mlf"

echo "#!MLF!#" > "$output"

awk -F'\t' -v path="$path" '{print  "\"" path "/" $1 ".lab\"" "\n" $2 "\n."}' "$input" >> "$output"

echo "Fichier MLF créé : $output"

