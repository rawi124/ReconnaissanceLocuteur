#!/bin/bash

input=/scratch/rbenamir/reconnaissance/train
#train_file=~/Bureau/ReconnaissanceLocuteur/ttData/train.scp
test_file=~/Bureau/ReconnaissanceLocuteur/ttData/testt.scp
#nb_fichier=9600
nb_fich_test=6400

#find "$input" -name \* | head -n "$nb_fichier" > "$train_file"

find "$input" -name \* | tail -n "$nb_fich_test" > "$test_file"

