#!/bin/bash
#SBATCH --account=PAS1855
#SBATCH --time=10:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=6
#SBATCH --cpus-per-task=1
#SBATCH --job-name Download SRAs

module load sratoolkit
fastq-dump --split-3  $1