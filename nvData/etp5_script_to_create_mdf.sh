#!/bin/bash

# Crée un fichier codetr.scp qui aura sur chaque ligne ...raw .... mfc

fichier_sortie="/home/rawi/ReconnaissanceLocuteur/nvData/fich_sortie/codetr.scp"
dossier_entree="/home/rawi/I322/raw"
dossier_sortie="/home/rawi/I322/mfc"
fichier_paths="/home/rawi/ReconnaissanceLocuteur/nvData/fich_sortie/paths.txt"

while IFS= read -r ligne; do
    chemin_complet_entree="$dossier_entree/$ligne.raw"
    chemin_complet_sortie="$dossier_sortie/$ligne.mfc"
    echo "$chemin_complet_entree $chemin_complet_sortie" >> "$fichier_sortie"
done < "$fichier_paths"

