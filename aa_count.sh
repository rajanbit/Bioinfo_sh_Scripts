#!/bin/bash

if [[ -z "$1" ]]; then
	echo -e " Usage:\n	bash aa_count.sh <fasta_file>"
else

while read line; do
	if [[ "${line:0:1}" == ">" ]]; then
		header="$line"
	elif [[ "${line:0:1}" != ">" ]]; then
  		sequence+="$line"
	fi
done < $1

A=$(echo $sequence | grep -o "A" | wc -l)
C=$(echo $sequence | grep -o "C" | wc -l)
D=$(echo $sequence | grep -o "D" | wc -l)
E=$(echo $sequence | grep -o "E" | wc -l)
F=$(echo $sequence | grep -o "F" | wc -l)
G=$(echo $sequence | grep -o "G" | wc -l)
H=$(echo $sequence | grep -o "H" | wc -l)
I=$(echo $sequence | grep -o "I" | wc -l)
K=$(echo $sequence | grep -o "K" | wc -l)
L=$(echo $sequence | grep -o "L" | wc -l)
M=$(echo $sequence | grep -o "M" | wc -l)
N=$(echo $sequence | grep -o "N" | wc -l)
O=$(echo $sequence | grep -o "O" | wc -l)
P=$(echo $sequence | grep -o "P" | wc -l)
Q=$(echo $sequence | grep -o "Q" | wc -l)
R=$(echo $sequence | grep -o "R" | wc -l)
S=$(echo $sequence | grep -o "S" | wc -l)
T=$(echo $sequence | grep -o "T" | wc -l)
U=$(echo $sequence | grep -o "U" | wc -l)
V=$(echo $sequence | grep -o "V" | wc -l)
W=$(echo $sequence | grep -o "W" | wc -l)
Y=$(echo $sequence | grep -o "Y" | wc -l)

echo -e '\n'"Accession number: "${header:1:11}

echo -e "\nAmino Acid Composition"

echo -e '\n'"Amino acid"'\t'"Count"'\n'\
"Glycine"'\t'$G'\n'"Alanine"'\t'$A'\n'"Valine"'\t'$V'\n'"Leucine"'\t'$L'\n'"Isoleucine"'\t'$I'\n'"Proline"'\t'$P\
'\n'"Methionine"'\t'$M'\n'"Phenylalanine"'\t'$F'\n'"Tryptophan"'\t'$W'\n'"Serine"'\t'$S'\n'"Threonine"'\t'$T\
'\n'"Asparagine"'\t'$N'\n'"Glutamine"'\t'$Q'\n'"Cysteine"'\t'$C'\n'"Tyrosine"'\t'$Y'\n'"Histidine"'\t'$H\
'\n'"Lysine"'\t'$K'\n'"Arginine"'\t'$R'\n'"Aspartic acid"'\t'$D'\n'"Glutamic acid"'\t'$E'\n'"Selenocysteine"'\t'$U\
'\n'"Pyrrolysine"'\t'$O'\n'\

fi
