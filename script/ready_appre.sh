input="/home/etudiants/rbenamir142/Bureau/ReconnaissanceLocuteur/train/files_clean.tsv"
output="/home/etudiants/rbenamir142/Bureau/ReconnaissanceLocuteur/train/samples"

nb_fichier=9600

awk -F'\t' '{print $2 "\t" $7}' "$input" | head -n "$nb_fichier" > "$output"




