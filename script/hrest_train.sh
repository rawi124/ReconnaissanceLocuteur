#!/bin/bash

model_folder="/home/dd/HTK_PROJECT/models"
herest="/home/dd/HTK_PROJECT/HTK/HTKTools/HERest"

num_iterations=10

# Paramètres HERest 
config_file="/home/dd/HTK_PROJECT/traitement/config"
trainset="/home/dd/HTK_PROJECT/traitement/trainset.scp"
label_file="/home/dd/HTK_PROJECT/traitement/monophones0"
mlf_file="/home/dd/HTK_PROJECT/traitement/phones0_all.mlf"

# Se déplacer dans le répertoire du modèle
cd "$model_folder" || exit

# Boucle pour effectuer plusieurs itérations
for ((iter = 9; iter <= num_iterations; iter++)); do
    echo "Iteration $iter"
    mkdir -p "hmm$iter"

    $herest -C "$config_file" -I "$mlf_file" -t 250.0 150.0 1000.0 \
           -S "$trainset" -H hmm$((iter-1))/macros -H hmm$((iter-1))/hmmdefs -M hmm$iter \
           "$label_file"
done

echo "Terminé!"

