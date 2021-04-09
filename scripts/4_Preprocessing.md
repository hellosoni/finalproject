# Preprocessing data with BBTools

```
#Ask for computing resources:
qsub -I -l nodes=1:ppn=28 -l walltime=01:00:00 -A PAS1855

#Make trimmed directory
cd ~/FinalProject
mkdir trimming no_duplicates

#Identifying Illumina adapters
cd trimming
/fs/ess/PAS1855/users/nghinguyen/FinalProject/softwares/bbmap/bbmerge.sh in1=/fs/ess/PAS1855/users/nghinguyen/FinalProject/data_raw/SRR9113334_1.fastq in2=/fs/ess/PAS1855/users/nghinguyen/FinalProject/data_raw/SRR9113334_2.fastq outa=adapters_illumina.fa

#Trimming
/fs/ess/PAS1855/users/nghinguyen/FinalProject/softwares/bbmap/bbduk.sh in1=/fs/ess/PAS1855/users/nghinguyen/FinalProject/data_raw/SRR9113334_1.fastq  in2=/fs/ess/PAS1855/users/nghinguyen/FinalProject/data_raw/SRR9113334_2.fastq out1=SRR9113334_1_clean.fastq out2=SRR9113334_2_clean.fastq  ref=/fs/ess/PAS1855/users/nghinguyen/FinalProject/trimming/adapters_illumina.fa k=23 mink=6 hdist=1 t=28 ktrim=r trimq=15 maq=15 qtrim=r minlen=50 tpe tbo overwrite=TRUE

/fs/ess/PAS1855/users/nghinguyen/FinalProject/softwares/bbmap/bbduk.sh in1=/fs/ess/PAS1855/users/nghinguyen/FinalProject/data_raw/SRR9113335_1.fastq  in2=/fs/ess/PAS1855/users/nghinguyen/FinalProject/data_raw/SRR9113335_2.fastq out1=SRR9113335_1_clean.fastq out2=SRR9113335_2_clean.fastq ref=/fs/ess/PAS1855/users/nghinguyen/FinalProject/trimming/adapters_illumina.fa k=23 mink=6 hdist=1 t=28 ktrim=r trimq=15 maq=15 qtrim=r minlen=50 tpe tbo overwrite=TRUE

/fs/ess/PAS1855/users/nghinguyen/FinalProject/softwares/bbmap/bbduk.sh in1=/fs/ess/PAS1855/users/nghinguyen/FinalProject/data_raw/SRR9113336_1.fastq  in2=/fs/ess/PAS1855/users/nghinguyen/FinalProject/data_raw/SRR9113336_2.fastq out1=SRR9113336_1_clean.fastq out2=SRR9113336_2_clean.fastq ref=/fs/ess/PAS1855/users/nghinguyen/FinalProject/trimming/adapters_illumina.fa k=23 mink=6 hdist=1 t=28 ktrim=r trimq=15 maq=15 qtrim=r minlen=50 tpe tbo overwrite=TRUE

#Create .gitignore file for the trimmed reads:
echo "/fs/ess/PAS1855/users/nghinguyen/FinalProject/trimming" > .gitignore
echo "*fastq" >> .gitignore
git add .gitignore
git commit -m "Added a gitignore file"
```