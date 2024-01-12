#!/bin/bash

input="/home/dd/HTK_PROJECT/data/mfc"
train_file="/home/dd/HTK_PROJECT/traitement/trainset.scp"
test_file="/home/dd/HTK_PROJECT/traitement/testset.scp"

cd "$input" || exit
files=(*.mfc)

total=${#files[@]}


nb_train=$((total * 70 / 100))
nb_test=$((total - nb_train))

find "$input" -name '*.mfc' -print | shuf > shuffled_files.tmp

# Sélectionner les fichiers pour l'ensemble d'entraînement
head -n "$nb_train" shuffled_files.tmp > "$train_file"

# Sélectionner les fichiers pour l'ensemble de test
tail -n "$nb_test" shuffled_files.tmp > "$test_file"

# Supprimer le fichier temporaire
rm shuffled_files.tmp
