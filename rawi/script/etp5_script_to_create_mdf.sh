#!/bin/bash

#cree un fichier codetr.scp qui aura sur chaque ligne ...raw .... mfc

fichier_sortie="/home/rawi/ReconnaissanceLocuteur/rawi/script/fich_sortie/codetr.scp"

fichier_paths="/home/rawi/ReconnaissanceLocuteur/rawi/script/fich_sortie/paths.txt"

chemin_entree="/home/rawi/I322/DATA/raw/"

chemin_sortie="/home/rawi/I322/DATA/mfc/"

> "$fichier_sortie"
sed -i 's/\.mp3//g' "$fichier_paths"
cat $fichier_paths | while  read ligne ; do
	name_e="$chemin_entree$ligne"
    	name_e_raw="$name_e.raw"
    	fich=$(basename "$ligne" .raw)
    	name_s="$chemin_sortie$fich.mfc"
	echo "$name_e_raw $name_s" >> "$fichier_sortie"
done 
