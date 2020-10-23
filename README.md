# Bioinfo_sh_Scripts
## Bash Scripts for Bioinformatics
### aa_count.sh
This script take protein fasta file as input and return the amino acids composition
```bash
$ bash aa_count.sh fasta_file
```
To save the output run `$ bash aa_count.sh fasta_file > result.tsv`

**Linux command to get the amino acids count**
```bash
$ cat fasta_file | grep -v ">" | grep -o "[ACDEFGHIKLMNOPQRSTUVWY]" | sort | uniq -c
```
### nt_count.sh
This script take DNA fasta file as input and return the nucleobase composition
```bash
$ bash nt_count.sh fasta_file
```
To save the output run `$ bash nt_count.sh fasta_file > result.tsv`

**Linux command to get the base count**
```bash
$ cat fasta_file | grep -v ">" | grep -o "[ATGC]" | sort | uniq -c
```
### seqtool.sh
This script take DNA fasta file as input and return Sequence Header/DNA Sequence/Complement DNA Sequence/Reverse Complement DNA Sequence/mRNA Sequence
```bash
$ bash seqtool.sh DNA_fasta_file
```
**Linux command to get complementary DNA sequence**
```bash
$ cat fasta_file | grep -v ">" | tr ATGC TACG
```
**Linux command to get reverse complementary DNA sequence**
```bash
$ cat fasta_file | grep -v ">" | rev | tr ATGC TACG
```
**Linux command to get mRNA sequence**
```bash
$ cat fasta_file | grep -v ">" | tr ATGC AUGC
```
# Linux Commands
Display the message "Hello, World!"
```bash
$ echo Hello, World!
```
Print Working Directory
```bash
$ pwd
```
Current Directory
```bash
$ cd .
```
Parent Directory
```bash
$ cd .. 
```
Change Directory
```bash
$ cd Directory/
```
Change directory (out current directory and in another directory)
```bash
$ cd ../dir_name
```
List all the contents within a directory
```bash
$ ls
```
List all the contents with additional information
```bash
$ ls -l
```
List all the contents with additional information in chronological order 
```bash
$ ls -lt
```
List all the contents with additional information in reverse chronological order 
```bash
$ ls -ltr
```
List all the files with a prefix (file)
```bash
$ ls file*
```
List all the files with a suffix (.txt)
```bash
$ ls *.txt
```
List all the files with prefix (file, ecoli, lacz) and suffix (.txt)
```bash
$ ls {file,ecoli,lacz}*.txt
```
List all the files with (a to z) initial letters and suffix (.txt)
```bash
$ ls [a-z]*.txt
```
List all the files with (a) initial letters and suffix (.txt)
```bash
$ ls a*.txt
```
File copying
```bash
$ cp file.txt dir_name
$ cp file1.txt file2.txt dir_name
$ cp file.txt path/to/dir
```
File moving
```bash
$ mv file.txt dir_name
$ mv file.txt path/to/dir
```
File creation
```bash
$ touch file.txt
$ touch file1.txt file2.txt file3.txt
```
Removing a file
```bash
$ rm file.txt
```
Removing a file while asking for confirmation y/n
```bash
$ rm -i file.txt
```
Creating a directory
```bash
$ mkdir dir_name
```
Removing an empty directory
```bash
$ rmdir dir_name
```
Removing a directory
```bash
$ rm -r dir_name
```
File viewing; more(unidirectional viewing) less(bidirectional viewing)
```bash
$ more file.txt
$ less file.txt
```
View top 10 lines of a file
```bash
$ head file.txt
```
View top 50 lines of a file
```bash
$ head -50 file.txt
```
View bottom 10 lines of a file
```bash
$ tail file.txt
```
View bottom 50 lines of a file
```bash
$ tail -50 file.txt
```
File reading and concatenation (cat: concatenate)

Reading the file content
```bash
$ cat file.txt
```
Concatenate two files
```bash
$ cat file1.txt file2.txt
```
Concatenate two files and create a new file having the content of both the files
```bash
$ cat file1.txt file2.txt > file3.txt
```
Writing a file by creating it (if the file is already present and not empty, then it will be overwritten)
```bash
$ cat > file.txt
```
Appending a file
```bash
$ cat >> file.txt
```
Count no_lines, no_words, no_characters and file_name
```bash
$ wc file.txt
```
Count no_lines
```bash
$ wc -l file.txt
```
Count no_of_items in a directory
```bash
$ ls | wc -l
```
Sorting file content alphabetically
```bash
$ sort file.txt
```
Sorting file content reverse alphabetically
```bash
$ sort -r file.txt
```
Sorting file content numerically
```bash
$ sort -n file.txt
```
Sorting file content reverse numerically
```bash
$ sort -rn file.txt
```
