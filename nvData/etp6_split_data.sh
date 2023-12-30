#!/bin/bash

paths_file="/home/rawi/ReconnaissanceLocuteur/nvData/fich_sortie/paths.txt"
train_file="/home/rawi/ReconnaissanceLocuteur/nvData/fich_sortie/train.scp"
test_file="/home/rawi/ReconnaissanceLocuteur/nvData/fich_sortie/test.scp"
nb_total=100657
nb_train=70459  # 70% de 100657
nb_test=30198   # 30% de 100657

# Création du fichier train.scp (70%)
head -n "$nb_train" "$paths_file" | sed 's|^|/home/rawi/I322/mfc/|;s|$|.mfc|' > "$train_file"

# Création du fichier test.scp (30%)
tail -n "$nb_test" "$paths_file" | sed 's|^|/home/rawi/I322/mfc/|;s|$|.mfc|' > "$test_file"

