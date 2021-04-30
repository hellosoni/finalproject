#!/bin/bash
#SBATCH --account=PAS1855
#SBATCH --time=15
#SBATCH --output=slurm-fastqc-%j.out
set -e -u -o pipefail

module load fastqc/0.11.8

in_dir=$1
sample_ID=$2
out_dir=$3

R1=${in_dir}/${sample_ID}_clean_1.fastq
R2=${in_dir}/${sample_ID}_clean_2.fastq
OUT=${out_dir}/${sample_ID}_

fastqc   ${R1} ${R2} -o ${out_dir}
