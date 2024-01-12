#!/bin/bash

input="/home/dd/HTK_PROJECT/script/clean_files/files_with_label.tsv"
mfc_folder="/home/dd/HTK_PROJECT/data/mfc"
train_file="/home/dd/HTK_PROJECT/traitement/trainset.scp"
test_file="/home/dd/HTK_PROJECT/traitement/testset.scp"
train_output="/home/dd/HTK_PROJECT/traitement/phones0_train.mlf"
test_output="/home/dd/HTK_PROJECT/traitement/phones0_test.mlf"

echo "#!MLF!#" > "$train_output"
echo "#!MLF!#" > "$test_output"

# Lire les fichiers du trainset et testset
mapfile -t train_set < "$train_file"
mapfile -t test_set < "$test_file"

# Créer un tableau associatif pour mapper les noms de fichiers aux classes
declare -A file_class_map

# Lire le fichier files_with_label.tsv et remplir le tableau associatif
while IFS=$'\t' read -r filename class; do
    file_class_map["$filename"]="$class"
done < "$input"

# Fonction pour ajouter des lignes au fichier MLF
function add_lines_to_mlf() {
    local set=("$@")
    for line in "${set[@]}"; do
        filename=$(basename "$line" .mfc)
        class="${file_class_map[$filename]}"
        echo "\"$mfc_folder/$filename.lab\""
        echo "$class"
        echo "."
    done
}

# Ajouter les lignes pour l'ensemble d'entraînement
add_lines_to_mlf "${train_set[@]}" >> "$train_output"

# Ajouter les lignes pour l'ensemble de test
add_lines_to_mlf "${test_set[@]}" >> "$test_output"

echo "Fichiers MLF créés : $train_output, $test_output"

