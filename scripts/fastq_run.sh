#!/bin/bash
#SBATCH --account=PAS1855
#SBATCH --time=15
#SBATCH --output=slurm-fastqc-%j.out
set -e -u -o pipefail


module load fastqc/0.11.8

in_dir="$1"
out_dir="$2"
sample_ID="$3"
R1=${in_dir}/${sample_ID}_1.fastq
R2=${in_dir}/${sample_ID}_2.fastq
OUT=${out_dir}/${sample_ID}_

fastqc --outdir="$output_dir" "$fastq_file"


