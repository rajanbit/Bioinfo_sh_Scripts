# Bioinfo_sh_Scripts
## Bash Scripts for Bioinformatics
## Linux Commands
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
