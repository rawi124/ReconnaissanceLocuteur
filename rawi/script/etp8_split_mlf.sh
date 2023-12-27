#!/bin/bash

fichier_entree="/home/rawi/ReconnaissanceLocuteur/rawi/script/fich_sortie/phones0.mlf"
train=34317
test=14709
test_mlf="/home/rawi/ReconnaissanceLocuteur/rawi/script/fich_sortie/phones0_test.mlf"
train_mlf="/home/rawi/ReconnaissanceLocuteur/rawi/script/fich_sortie/phones0_train.mlf"

head -n "$train" "$fichier_entree" > "$train_mlf"
tail -n "$test" "$fichier_entree" > "$test_mlf"

