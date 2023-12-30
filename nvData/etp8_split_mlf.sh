#!/bin/bash

fichier_entree="/home/rawi/ReconnaissanceLocuteur/nvData/fich_sortie/phones0.mlf"
train=211379
test=90592
test_mlf="/home/rawi/ReconnaissanceLocuteur/nvData/fich_sortie/phones0_test.mlf"
train_mlf="/home/rawi/ReconnaissanceLocuteur/nvData/fich_sortie/phones0_train.mlf"
echo "#!MLF!#" > "$train_mlf"
echo "#!MLF!#" > "$test_mlf"
head -n "$train" "$fichier_entree" >> "$train_mlf"
tail -n "$test" "$fichier_entree" >> "$test_mlf"

