input="/home/etudiants/rbenamir142/Bureau/ReconnaissanceLocuteur/train/files_clean.tsv"
output="/home/etudiants/rbenamir142/Bureau/ReconnaissanceLocuteur/train/samples"
#input="../train/files_clean.tsv"
#output="../train/samples"
nb_fichier=19200

awk -F'\t' '{print $2 ".lab" "\n" $7}' "$input" | head -n "$nb_fichier" > "$output"




