#!/bin/bash

input="/home/rawi/ReconnaissanceLocuteur/nvData/fich_sortie/files_clean.tsv"
output="/home/rawi/ReconnaissanceLocuteur/nvData/fich_sortie/phones0.mlf"

# Parcours de chaque ligne du fichier files_clean.tsv
awk -F'\t' '{
    lab_path = "\"/home/rawi/I322/mfc/" gensub(/.mp3/, "", "g", $2) ".lab\""    
	print lab_path
    if ($0 ~ /male/) {
        print "male"
    } else if ($0 ~ /female/) {
        print "female"
    }
    print "."
}' "$input" > "$output"

