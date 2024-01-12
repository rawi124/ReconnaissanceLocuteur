#!/bin/bash

model_folder="/home/dd/HTK_PROJECT/models"
hhed="/home/dd/HTK_PROJECT/HTK/HTKTools/HHEd"


# Paramètres HERest 
config_file="/home/dd/HTK_PROJECT/traitement/config"
modele="/home/dd/HTK_PROJECT/models/hmm1"
label_file="/home/dd/HTK_PROJECT/traitement/monophones0"
inc_gauss="/home/dd/HTK_PROJECT/traitement/inc_gauss.hed"

# Se déplacer dans le répertoire du modèle
cd "$model_folder" || exit

mkdir -p "hmm2"

$hhed -T 1 -H "$modele/hmmdefs" -H "$modele/macros" -M  hmm2 \
	 -C "$config_file" "$inc_gauss"  "$label_file"
           

