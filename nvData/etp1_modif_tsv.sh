#!/bin/bash

# Modifie le fichier train.tsv pour ne conserver que les lignes contenant "male" ou "female" avec une tabulation avant
input_file="/home/rawi/I322/cv-corpus-16.0-2023-12-06/fr/train.tsv"
output_file="/home/rawi/ReconnaissanceLocuteur/nvData/fich_sortie/files_clean.tsv"

# Création du fichier de sortie
> "$output_file"

while IFS= read -r ligne; do
    # Vérifie si la ligne contient une tabulation
    if echo "$ligne" | grep -q -E '\t'; then
        # Ensuite, vérifie si la ligne contient "male" ou "female"
        if echo "$ligne" | grep -q -E '(male|female)'; then
            # Si oui, ajoute la ligne au fichier de sortie
            echo "$ligne" >> "$output_file"
        fi
    fi
done < "$input_file"
