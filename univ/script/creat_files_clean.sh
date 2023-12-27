#!/bin/bash

fichier_entree="files.tsv"

fichier_sortie="files_clean.tsv"

> "$fichier_sortie"

while IFS=$'\t' read -r -a elements; do
    if [ "${#elements[@]}" -eq 8 ]; then
      echo -e "${elements[0]}\t${elements[1]}\t${elements[2]}\t${elements[3]}\t${elements[4]}\t${elements[5]}\t${elements[6]}\t${elements[7]}" >> "$fichier_sortie" 
    fi
done < "$fichier_entree"

