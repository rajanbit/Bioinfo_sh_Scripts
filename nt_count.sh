#!/bin/bash

if [[ -z "$1" ]]; then
	echo -e " Usage:\n	bash nt_count.sh <fasta_file>"
else

while read line; do
	if [[ "${line:0:1}" == ">" ]]; then
		header="$line"
	elif [[ "${line:0:1}" != ">" ]]; then
  		sequence+="$line"
	fi
done < $1

echo -e '\n'"Accession number: "${header:1:11}

echo -e "\nNucleobase Composition"

echo -e '\n'"Base"'\t'"Count"'\n'\
"Adenine"'\t'$(echo $sequence | grep -o "A" | wc -l)'\n'"Thymine"'\t'$(echo $sequence | grep -o "T" | wc -l)'\n'\
"Guanine"'\t'$(echo $sequence | grep -o "G" | wc -l)'\n'"Cytosine"'\t'$(echo $sequence | grep -o "C" | wc -l)'\n'

fi
