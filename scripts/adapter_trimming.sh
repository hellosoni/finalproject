#!/bin/bash
#SBATCH --account=PAS1855
#SBATCH --time=3:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=6
#SBATCH --cpus-per-task=1
#SBATCH -J Adapter_trimming

in_dir=$1
bbduk=$2
for i in `ls -1 $in_dir/{sample_ID}_1.fastq | sed 's/_1.fastq/'` 
do

 $bbduk -Xmx1g in1=$i\_1.fastq in2=$i\_2.fastq out1=/fs/ess/PAS1855/users/nghinguyen/FinalProject/results/trimmed/adapter_trimmed/${i##*/}\_clean_1.fastq out2=/fs/ess/PAS1855/users/nghinguyen/FinalProject/results/trimmed/adapter_trimmed/${i##*/}\_clean_2.fastq ref=/fs/ess/PAS1855/users/nghinguyen/FinalProject/softwares/bbmap/resources/adapters.fa
 ktrim=r k=23 mink=11 hdist=1 tpe tbo

done