# Preprocessing data with BBTools

```
#Ask for computing resources:
qsub -I -l nodes=1:ppn=28 -l walltime=01:00:00 -A PAS1855

#Make trimmed directory
cd ~/FinalProject
mkdir trimming no_duplicates

#Identifying Illumina adapters
cd trimming
/fs/ess/PAS1855/users/<YOUROSCID>/<YOURDIR>/softwares/bbmap/bbmerge.sh in1=/fs/ess/PAS1855/users/<YOUROSCID>/<YOURDIR>/data_raw/<READID>_1.fastq in2=/fs/ess/PAS1855/users/<YOUROSCID>/<YOURDIR>/data_raw/<READID>_2.fastq outa=adapters_illumina.fa

#Adapter Trimming
/fs/ess/PAS1855/users/<YOUROSCID>/<YOURDIR>/softwares/bbmap/bbduk.sh in1=/fs/ess/PAS1855/users/<YOUROSCID>/<YOURDIR>/data_raw/<READID>_1.fastq  in2=/fs/ess/PAS1855/users/<YOUROSCID>/<YOURDIR>/data_raw/<READID>_2.fastq out1=<READID>_1_clean.fastq out2=<READID>_2_clean.fastq  ref=/fs/ess/PAS1855/users/<YOUROSCID>/<YOURDIR>/trimming/adapters_illumina.fa k=23 mink=6 hdist=1 t=28 ktrim=r trimq=15 maq=15 qtrim=r minlen=50 tpe tbo overwrite=TRUE


#Clean out duplication
/fs/ess/PAS1855/users/nghinguyen/FinalProject/softwares/bbmap/clumpify.sh in=/fs/ess/PAS1855/users/nghinguyen/FinalProject/trimming/<READID>_1_clean.fastq out=<READID>_1_clean_nodup.fastq

/fs/ess/PAS1855/users/nghinguyen/FinalProject/softwares/bbmap/clumpify.sh in=/fs/ess/PAS1855/users/nghinguyen/FinalProject/trimming/<READID>_2_clean.fastq out=<READID>_2_clean_nodup.fastq


#Create .gitignore file for the trimmed reads:
echo "/fs/ess/PAS1855/users/<YOUROSCID>/<YOURDIR>/trimming" > .gitignore
echo "*fastq" >> .gitignore
echo "*fa" >> .gitignore
git add .gitignore
git commit -m "Added a gitignore file"

#Create .gitignore file for the no duplicated reads:
echo "/fs/ess/PAS1855/users/<YOUROSCID>/<YOURDIR>/no_duplicates" > .gitignore
echo "*fastq" >> .gitignore
git add .gitignore
git commit -m "Added a gitignore file"
```