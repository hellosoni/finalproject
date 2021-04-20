#!/bin/bash
#SBATCH --account=PAS1855
#SBATCH --time=3:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=6
#SBATCH --cpus-per-task=1
#SBATCH -J Quality_trimming


in_dir=$1
sample_ID=$2
bbduk=$3
out_dir=$4

R1=${in_dir}/${sample_ID}_1.fastq
R2=${in_dir}/${sample_ID}_2.fastq
OUT=${out_dir}/${sample_ID}_qtclean

${bbduk}/bbduk.sh in1=${R1} in2=${R2} out1=${OUT}_1.fastq  out2=${OUT}_2.fastq qtrim=r trimq=10
