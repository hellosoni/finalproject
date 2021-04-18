#!/bin/bash

#SBATCH --account=PAS1855
#SBATCH --time=3:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=6
#SBATCH --cpus-per-task=1
#SBATCH --job-name STAR_index

module load python/3.6-conda5.2
source activate star-env

STAR --runThreadN 28 \
--runMode genomeGenerate \
--genomeDir /fs/ess/PAS1855/users/nghinguyen/FinalProject/results/STAR/STARindexed_ref \
--genomeFastaFiles /fs/ess/PAS1855/users/nghinguyen/FinalProject/data_raw/refgenome/Gmax_275_v2.0.fa \
--genomeSAindexNbases 13 \
--sjdbOverhang 99