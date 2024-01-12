#!/bin/bash

# Spécifiez le chemin vers votre fichier train.scp
train_file="/home/dd/HTK_PROJECT/traitement/list_mfc"

# Spécifiez le nombre de plis (k)
num_folds=5

# Créez un répertoire pour stocker les plis
output_folder="/home/dd/HTK_PROJECT/validCrois"
mkdir -p "$output_folder"

# Mélangez les lignes de train.scp
shuf "$train_file" > "$output_folder/train_shuffled.scp"

# Divisez les lignes en k parties
split -n l/$num_folds "$output_folder/train_shuffled.scp" "$output_folder/train_fold"

# Supprimez le fichier temporaire
rm "$output_folder/train_shuffled.scp"

# Créer le fichier de protocole
proto_tmp="/home/dd/HTK_PROJECT/validCrois/test"

touch "$proto_tmp"
for fold in $(seq 1 $num_folds); do
    echo "TRAINSCP = $output_folder/train_fold$fold.scp" >> "$proto_tmp"
    echo "TESTSCP = $output_folder/train_fold$((fold%num_folds + 1)).scp" >> "$proto_tmp"
done


