#!/bin/bash

#partage le data en deux parties avec des proportions 70% et 30%

input="/home/rawi/I322/DATA/mfc"
train_file="/home/rawi/ReconnaissanceLocuteur/rawi/script/fich_sortie/train.scp"
test_file="/home/rawi/ReconnaissanceLocuteur/rawi/script/fich_sortie/test.scp"
nb_train=11439
nb_test=4903

find "$input" -name \* | head -n "$nb_train" > "$train_file"

find "$input" -name \* | tail -n "$nb_test" > "$test_file"
