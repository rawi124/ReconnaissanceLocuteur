#!/bin/bash

fichier_sortie="./codetr.scp"

fichier_paths="/home/etudiants/rbenamir142/Bureau/ReconnaissanceLocuteur/train/paths.txt"

chemin_entree="/scratch/rbenamir/reconnaissance/data/"

chemin_sortie="/scratch/rbenamir/reconnaissance/train/"

> "$fichier_sortie"
cat $fichier_paths | while  read ligne ; do
	name_e="$chemin_entree$ligne"
	fich=$(basename "$ligne" .raw)
	name_s="$chemin_sortie$fich.mfc"
	echo "$name_e $name_s" >> "$fichier_sortie"
done 


