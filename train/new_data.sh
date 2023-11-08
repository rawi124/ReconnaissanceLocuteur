#!/bin/bash

data_entree="/scratch/rbenamir/reconnaissance/data"

data_sortie="/scratch/rbenamir/reconnaissance/ttData"

fichier_paths="/home/etudiants/rbenamir142/Bureau/ReconnaissanceLocuteur/train/paths.txt"

for fichier in $data_entree/*.raw ; do
	fich=$(basename "$fichier")
	cat $fichier_paths | while  read ligne ; do
		if [ "$fich" = "$ligne" ]; then
        		mv $fichier $data_sortie  
   		fi
	done
done


