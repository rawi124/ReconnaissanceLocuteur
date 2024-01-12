#!/bin/bash

mfc_folder="/home/dd/HTK_PROJECT/data/mfc"
train_file="/home/dd/HTK_PROJECT/traitement/trainset.scp"
test_file="/home/dd/HTK_PROJECT/traitement/testset.scp"

cd "$mfc_folder" || exit

files=(*.mfc)

total_files=${#files[@]}
train_size=$((total_files * 70 / 100))
test_size=$((total_files - train_size))


train_set=("${files[@]:0:$train_size}")
test_set=("${files[@]:$train_size:$test_size}")


train_set=("${train_set[@]/#/$mfc_folder/}")
test_set=("${test_set[@]/#/$mfc_folder/}")

printf "%s\n" "${train_set[@]}" > "$train_file"
printf "%s\n" "${test_set[@]}" > "$test_file"

