#!/bin/bash
#SBATCH --account=PAS1855
#SBATCH --time=4:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=6
#SBATCH --cpus-per-task=1
#SBATCH --job-name featureCounts

cd /fs/ess/PAS1855/users/nghinguyen/FinalProject/results/featurecounts

GFF="/fs/ess/PAS1855/users/nghinguyen/FinalProject/results/STAR/STARindexed_ref/Gmax_275_Wm82.a2.v1.gene.gff3"
OUTFILE="/fs/ess/PAS1855/users/nghinguyen/FinalProject/results/featurecounts"
module load subread
# package containing featureCounts script
featureCounts \
   -T 16 \
   -p \
   -t gene \
   -a  Gmax_275_Wm82.a2.v1.gene.gff3 \
   -o ${OUTFILE}_counts.txt *.bam
/fs/ess/PAS1855/users/nghinguyen/FinalProject/results/STAR/STARres/*.sam   