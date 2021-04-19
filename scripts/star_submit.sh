#!/bin/bash

#SBATCH --account=PAS1855
#SBATCH --time=10:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=6
#SBATCH --cpus-per-task=1
#SBATCH --job-name STAR_map

cd /fs/ess/PAS1855/users/nghinguyen/FinalProject/results/STAR/STARres
module load python/3.6-conda5.2
source activate star-env

in_dir="/fs/ess/PAS1855/users/nghinguyen/FinalProject/results/trimmed/quality_trimmed/"
dir="fs/ess/PAS1855/users/nghinguyen/FinalProject/results/STAR/STARindexed_ref/Gmax_275_v2.0_star"

for fastq in ${in_dir}
    do
R1=${in_dir}/*_cleanqt_1.fastq
R2=${in_dir}/*_cleanqt_2.fastq
OUT=$(basename ${R1%%.*})
STAR \
 --runMode alignReads \
 --runThreadN 20 \
 --genomeDir ${dir} \
 --outFileNamePrefix ${OUT} \
 --readFilesIn ${R1} ${R2}

done





