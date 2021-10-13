# Bioinfo_sh_Scripts
## Bash Scripts for Bioinformatics
### aa_count.sh
This script take protein fasta file as input and return the amino acids composition
```bash
$ bash aa_count.sh fasta_file
```
To save the output run `$ bash aa_count.sh fasta_file > result.tsv`

### nt_count.sh
This script take DNA fasta file as input and return the nucleobase composition
```bash
$ bash nt_count.sh fasta_file
```
To save the output run `$ bash nt_count.sh fasta_file > result.tsv`

### seqtool.sh
This script take DNA fasta file as input and return Sequence Header/DNA Sequence/Complement DNA Sequence/Reverse Complement DNA Sequence/mRNA Sequence
```bash
$ bash seqtool.sh DNA_fasta_file
```
