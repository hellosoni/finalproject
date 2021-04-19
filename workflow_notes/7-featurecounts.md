# Count expression with feature count


```
GFF="/fs/ess/PAS1855/users/nghinguyen/FinalProject/results/STAR/STARindexed_ref/Gmax_275_Wm82.a2.v1.gene.gff3"
OUTFILE="/fs/ess/PAS1855/users/nghinguyen/FinalProject/results/featurecounts"
module load subread
# package containing featureCounts script
featureCounts \
   -T 16 \
   -p \
   -t gene \
   -a  \
   -o ${OUTFILE}_counts.txt *.bam
   ```