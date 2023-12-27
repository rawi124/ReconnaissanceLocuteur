#!/bin/bash

#recupere les fichiers mp3 qui existent dans paths.txt


repertoire_source="/home/rawi/I322/DATA/clips"
repertoire_destination="/home/rawi/I322/DATA/bonMp3"
fichier_paths="/home/rawi/ReconnaissanceLocuteur/rawi/script/fich_sortie/paths.txt"

mkdir -p "$repertoire_destination"

xargs -a "$fichier_paths" -I {} cp "$repertoire_source/{}" "$repertoire_destination/"


