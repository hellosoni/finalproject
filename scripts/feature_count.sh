#!/bin/bash
#SBATCH --account=PAS1855
#SBATCH --time=2:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=6
#SBATCH --cpus-per-task=1
#SBATCH --job-name featureCounts



GFF=$1
OUTFILE=$2
out_dir=$3
module load subread
# package containing featureCounts script
featureCounts \
   -T 16 \
   -p \
   -t gene \
   -a  $GFF \
   -o ${OUTFILE}_counts.txt *.bam
