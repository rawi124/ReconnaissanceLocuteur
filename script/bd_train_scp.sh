#!/bin/bash

input=/scratch/rbenamir/reconnaissance/train
train_file=~/Bureau/ReconnaissanceLocuteur/ttData/train.scp
nb_fichier=9600

find "$input" -name \* | head -n "$nb_fichier" > "$train_file"



