#!/bin/bash

#SBATCH --account=PAS1855
#SBATCH --time=3:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=6
#SBATCH --cpus-per-task=1
#SBATCH --job-name STAR_index

module load python/3.6-conda5.2
source activate star-env
FASTA=$1
dir=$2

mkdir -p $2/${FASTA%.*}_star

STAR --runThreadN 28 \
--runMode genomeGenerate \
--genomeDir $2/${FASTA%.*}_star \
--genomeFastaFiles ${FASTA}  \
--genomeSAindexNbases 13 \

