# Preprocessing data with BBTools

```
#Ask for computing resources:
qsub -I -l nodes=1:ppn=28 -l walltime=03:00:00 -A PAS1855

#Make trimmed directory
cd ~/Final\ Project
mkdir trimming no_duplicates

#Identifying Illumina adapters
cd trimmed
/fs/ess/PAS1855/users/nghinguyen/Final\ Project/softwares/bbmap/bbmerge.sh in1=/fs/ess/PAS1855/users/nghinguyen/Final\ Project/data_raw/*_1.fastq in2=/fs/ess/PAS1855/users/nghinguyen/Final\ Project/data_raw/*_2.fastq outa=adapters_illumina.fa

#Trimming
/fs/ess/PAS1855/users/nghinguyen/Final\ Project/softwares/bbmap/bbduk.sh in1=/fs/ess/PAS1855/users/nghinguyen/Final\ Project/data_raw/*_1.fastq  in2=/fs/ess/PAS1855/users/nghinguyen/Final\ Project/data_raw/*_2.fastq out1=*_1_clean.fastq out2=*_2_clean.fastq.gz ref=/fs/ess/PAS1855/users/nghinguyen/Final\ Project/trimmed/adapters_illumina.fa k=23 mink=6 hdist=1 t=28 ktrim=r trimq=15 maq=15 qtrim=r minlen=50 tpe tbo overwrite=TRUE

#Clean dupplications?
cd ..
cd no_duplicates
/fs/ess/PAS1855/users/nghinguyen/Final\ Project/softwares/bbmap/clumpify.sh in=/fs/ess/PAS1855/users/nghinguyen/Final\ Project/trimmed/*_1_clean.fastq out=*_1_clean_nodup.fastq

/fs/scratch/PAS1752/your_OSC_ID/Assembly/Software/bbmap/clumpify.sh in=/fs/ess/PAS1855/users/nghinguyen/Final\ Project/trimmed/*_2_clean.fastq out=*_2_clean_nodup.fastq

```