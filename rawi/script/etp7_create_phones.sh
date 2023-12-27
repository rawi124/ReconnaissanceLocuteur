input="/home/rawi/ReconnaissanceLocuteur/rawi/script/fich_sortie/files_clean.tsv"
data="/home/rawi/ReconnaissanceLocuteur/rawi/script/fich_sortie/phones0.mlf"

echo "#!MLF!#" > "$data" &&  awk -F'\t' '{print  "\"/home/rawi/I322/DATA/mfc/"$2 ".lab\"" "\n" $7 "\n."}' "$input"  > $data
