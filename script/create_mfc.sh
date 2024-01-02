#!/bin/bash

fichier_sortie="../new_trait/codetr.scp"
fichier_paths="clean_files/paths.txt"
chemin_entree="/home/dd/HTK_PROJECT/data/raw/"
chemin_sortie="/home/dd/HTK_PROJECT/data/mfc/"

> "$fichier_sortie"
cat $fichier_paths | while  read ligne ; do
	name_e="$chemin_entree$ligne.raw"
	fich=$(basename "$ligne" .raw)
	name_s="$chemin_sortie$fich.mfc"
	echo "$name_e $name_s" >> "$fichier_sortie"
done 


