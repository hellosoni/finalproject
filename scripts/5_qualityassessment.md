# Quality assessment of trimmed reads

```
#Ask for computing resources:
qsub -I -l nodes=1:ppn=28 -l walltime=01:00:00 -A PAS1855

#Quality control for trimmed reads
mkdir Assessment
/fs/ess/PAS1855/users/nghinguyen/FinalProject/softwares/FastQC/fastqc -t 2 /fs/ess/PAS1855/users/nghinguyen/FinalProject/no_duplicates/SRR9113334_1_clean_nodup.fastq /fs/ess/PAS1855/users/nghinguyen/FinalProject/no_duplicates/SRR9113334_2_clean_nodup.fastq --outdir=.

/fs/ess/PAS1855/users/nghinguyen/FinalProject/softwares/FastQC/fastqc -t 2 /fs/ess/PAS1855/users/nghinguyen/FinalProject/no_duplicates/SRR9113335_1_clean_nodup.fastq /fs/ess/PAS1855/users/nghinguyen/FinalProject/no_duplicates/SRR9113335_2_clean_nodup.fastq --outdir=.

/fs/ess/PAS1855/users/nghinguyen/FinalProject/softwares/FastQC/fastqc -t 2 /fs/ess/PAS1855/users/nghinguyen/FinalProject/no_duplicates/SRR9113336_1_clean_nodup.fastq /fs/ess/PAS1855/users/nghinguyen/FinalProject/no_duplicates/SRR9113336_2_clean_nodup.fastq --outdir=.

#Create .gitignore file for the SRAs:
echo "/fs/ess/PAS1855/users/nghinguyen/FinalProject/Assessment/" > .gitignore
echo "*zip" >> .gitignore
echo "*html" >> .gitignore
git add .gitignore
git commit -m "Added a gitignore file"