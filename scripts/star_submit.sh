#!/bin/bash

#SBATCH --account=PAS1855
#SBATCH --time=4:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=6
#SBATCH --cpus-per-task=1
#SBATCH --job-name STAR_map


module load python/3.6-conda5.2
source activate star-env

R1="$1"
R2="$2"
OUT=$(basename ${R1} |cut -f 1 -d "_");
dir="/fs/ess/PAS1855/users/nghinguyen/FinalProject/results/STAR/STARindexed_ref/Gmax_275_v2.0_star"

STAR --runThreadN 20 \
--runMode alignReads \
--genomeDir ${dir} \
--readFilesIn ${R1} ${R2} \
 --outFileNamePrefix ${OUT}_star \
--outSAMtype BAM SortedByCoordinate \
--outSAMunmapped Within \
--outSAMattributes Standard 


