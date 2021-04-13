#!/bin/bash

#SBATCH --account=PAS1855
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=6
#SBATCH --cpus-per-task=1

set -e -u -o pipefail

snakemake -j"$SLURM_NTASKS" -p 