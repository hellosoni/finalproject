#!/bin/bash
#SBATCH --account=PAS1855
#SBATCH --time=3:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=6
#SBATCH --cpus-per-task=1
#SBATCH -J Quality_trimming

cd /fs/ess/PAS1855/users/nghinguyen/FinalProject/results/trimmed

for i in `ls -1 /fs/ess/PAS1855/users/nghinguyen/FinalProject/results/trimmed/adapter_trimmed/*_clean_1.fastq | sed 's/_clean_1.fastq//'` 
do
/fs/ess/PAS1855/users/nghinguyen/FinalProject/softwares/bbmap/bbduk.sh -Xmx1g in1=$i\_clean_1.fastq in2=$i\_clean_2.fastq out1=/fs/ess/PAS1855/users/nghinguyen/FinalProject/results/trimmed/quality_trimmed/${i##*/}\_cleanqt_1.fastq out2=/fs/ess/PAS1855/users/nghinguyen/FinalProject/results/trimmed/quality_trimmed/${i##*/}\_cleanqt_2.fastq qtrim=r trimq=10
done