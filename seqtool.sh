#!/bin/bash

if [[ -z "$1" ]]; then
	echo -e "Usage:\n	bash seqtool.sh <DNA_fasta_file>"
else

while read line; do
	if [[ "${line:0:1}" == ">" ]]; then
		header="$line"
	elif [[ "${line:0:1}" != ">" ]]; then
  		sequence+="$line"
	fi
done < $1
echo -e "Enter the choice:
	Sequence Header [h]
	DNA Sequence [d]
	Complement DNA Sequence [c]
	Reverse Complement DNA Sequence [rc]
	mRNA Sequence [m]" 
read choice
echo
if [[ $choice == "h" ]]; then
	echo "Sequence Header:"
	echo $header
elif [[ $choice == "d" ]]; then
	echo "DNA Sequence:"
	echo $sequence
elif [[ $choice == "c" ]]; then
	echo "Complementary DNA Sequence:"
	echo $sequence | tr "ATGC" "TACG"
elif [[ $choice == "rc" ]]; then
	echo "Reverse Complementary DNA Sequence:"
	echo $sequence | rev | tr "ATGC" "TACG"
elif [[ $choice == "m" ]]; then
	echo "mRNA Sequence:"
	echo $sequence | tr "ATGC" "AUGC"
fi

fi
