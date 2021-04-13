# Alignment with STAR aligner

```
#Generate genome indexes of the reference genome
mkdir STARindexed_ref
cd STARindexed_ref

module load python/3.6-conda5.2
source activate star-env
STAR --runThreadN 28 \
--runMode genomeGenerate \
--genomeDir /fs/ess/PAS1855/users/nghinguyen/FinalProject/STARindexed_ref \
--genomeFastaFiles /fs/ess/PAS1855/users/nghinguyen/FinalProject/refgenome/Gmax_275_v2.0.fa \
--genomeSAindexNbases 13
--sjdbOverhang 99
#Note may be should submit script to SLURM using the star_submit.sh script

# Run the mapping
mkdir results
cd results
mkdir STAR

STAR --genomeDir /fs/ess/PAS1855/users/nghinguyen/FinalProject/STARindexed_ref \
--runThreadN 20 \
--readFilesIn /fs/ess/PAS1855/users/nghinguyen/FinalProject/no_duplicates/SRR9113334_1_clean_nodup.fastq [/fs/ess/PAS1855/users/nghinguyen/FinalProject/no_duplicates/SRR9113334_2_clean_nodup.fastq] \
--outFileNamePrefix /fs/ess/PAS1855/users/nghinguyen/FinalProject/results/STAR/SRR9113334_, \
--outSAMtype BAM SortedByCoordinate \

```


