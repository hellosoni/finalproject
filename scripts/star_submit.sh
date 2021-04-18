#!/bin/bash

#SBATCH --account=PAS1855
#SBATCH --time=4:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=6
#SBATCH --cpus-per-task=1
#SBATCH --job-name STAR_map

cd /fs/ess/PAS1855/users/nghinguyen/FinalProject/results/STARres/

module load python/3.6-conda5.2
source activate star-env

STAR --runThreadN 20 \
--genomeDir /fs/ess/PAS1855/users/nghinguyen/FinalProject/STARindexed_ref \
--readFilesIn /fs/ess/PAS1855/users/nghinguyen/FinalProject/no_duplicates/SRR9113334_1_clean_nodup.fastq,/fs/ess/PAS1855/users/nghinguyen/FinalProject/no_duplicates/SRR9113334_2_clean_nodup.fastq \
--outFileNamePrefix /fs/ess/PAS1855/users/nghinguyen/FinalProject/results/STAR/SRR9113334_ \
--outSAMtype BAM SortedByCoordinate \
--outSAMunmapped Within \
--outSAMattributes Standard 

STAR --runThreadN 20 \
--genomeDir /fs/ess/PAS1855/users/nghinguyen/FinalProject/STARindexed_ref \
--readFilesIn /fs/ess/PAS1855/users/nghinguyen/FinalProject/no_duplicates/SRR9113335_1_clean_nodup.fastq,/fs/ess/PAS1855/users/nghinguyen/FinalProject/no_duplicates/SRR9113335_2_clean_nodup.fastq \
--outFileNamePrefix /fs/ess/PAS1855/users/nghinguyen/FinalProject/results/STAR/SRR9113335_ \
--outSAMtype BAM SortedByCoordinate \
--outSAMunmapped Within \
--outSAMattributes Standard 

STAR --runThreadN 20 \
--genomeDir /fs/ess/PAS1855/users/nghinguyen/FinalProject/STARindexed_ref \
--readFilesIn /fs/ess/PAS1855/users/nghinguyen/FinalProject/no_duplicates/SRR9113336_1_clean_nodup.fastq,/fs/ess/PAS1855/users/nghinguyen/FinalProject/no_duplicates/SRR9113336_2_clean_nodup.fastq  \
--outFileNamePrefix /fs/ess/PAS1855/users/nghinguyen/FinalProject/results/STAR/SRR9113336_ \
--outSAMtype BAM SortedByCoordinate \
--outSAMunmapped Within \
--outSAMattributes Standard 