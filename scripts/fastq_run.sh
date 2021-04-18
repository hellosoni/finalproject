#!/bin/bash
#SBATCH --account=PAS1855
#SBATCH --time=15
#SBATCH --output=slurm-fastqc-%j.out
set -e -u -o pipefail

cd /fs/ess/PAS1855/users/nghinguyen/FinalProject/data_raw/

module load fastqc/0.11.8

fastq_file="$1"
output_dir="$2"

echo "Running fastqc for file: $fastq_file"
echo "Output dir: $output_dir"

fastqc --outdir="$output_dir" "$fastq_file"


