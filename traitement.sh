#!/bin/bash
# ce script permet de convertir des fichiers .mp3 en fichier raw
# ces fichiers seront extraits du repertoire /scratch/I322/DATA/clips 
# et enregistres dans /Bureau/ReconnaissanceLocuteur/data

input="data"
output="data"

for fichier in $input/*.mp3 ; 
do
	fich=$(basename $fichier .mp3)
	sox "$fichier" $output/"$fich".raw 
done
