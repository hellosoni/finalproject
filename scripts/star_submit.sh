#!/bin/bash

#SBATCH --account=PAS1855
#SBATCH --time=10:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=6
#SBATCH --cpus-per-task=1
#SBATCH --job-name STAR_map

module load python/3.6-conda5.2
source activate star-env

in_dir=$1
sample_ID=$2
out_dir=$3
ref=$4
R1=${in_dir}/${sample_ID}_cleanqt_1.fastq
R2=${in_dir}/${sample_ID}_cleanqt_2.fastq
OUT=${out_dir}/${sample_ID}_

echo "R1: $R1"
echo "R2: $R2"
echo "OUT: $OUT"
echo "ref: $ref"


STAR \
 --runMode alignReads \
 --runThreadN 20 \
 --genomeDir ${ref} \
 --outFileNamePrefix ${OUT} \
 --readFilesIn ${R1} ${R2}







