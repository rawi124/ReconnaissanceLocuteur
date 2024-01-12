#!/bin/bash

input="/home/dd/HTK_PROJECT/data/mfc"
train_file="/home/dd/HTK_PROJECT/traitement/trainset.scp"
test_file="/home/dd/HTK_PROJECT/traitement/testset.scp"

cd "$input" || exit
files=(*.mfc)

total=${#files[@]}

nb_train=$((total * 70 / 100))
nb_test=$((total - nb_train))

find "$input" -name \* | head -n "$nb_train" > "$train_file"

find "$input" -name \* | tail -n "$nb_test" > "$test_file"
