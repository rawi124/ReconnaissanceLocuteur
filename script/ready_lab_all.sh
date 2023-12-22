input="/home/etudiants/rbenamir142/Bureau/ReconnaissanceLocuteur/train/files_clean.tsv"
output="/home/etudiants/rbenamir142/Bureau/ReconnaissanceLocuteur/ttData/phones0_all.mlf"
nb_fichier=48000

echo "#!MLF!#" > "$output" &&  awk -F'\t' '{print  "\"/scratch/rbenamir/reconnaissance/train/"$2 ".lab\"" "\n" $7 "\n."}' "$input" | head -n "$nb_fichier" >> "$output"

