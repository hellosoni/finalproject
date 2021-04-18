# Alignment with STAR aligner

```
#Generate genome indexes of the reference genome
mkdir STARindexed_ref
cd STARindexed_ref

module load python/3.6-conda5.2
source activate star-env
STAR --runThreadN 28 \
--runMode genomeGenerate \
--genomeDir /fs/ess/PAS1855/users/<YOUROSCID>/<YOURDIR>/STARindexed_ref \
--genomeFastaFiles /fs/ess/PAS1855/users/<YOUROSCID>/<YOURDIR>/refgenome/Gmax_275_v2.0.fa \
--genomeSAindexNbases 13
--sjdbOverhang 99
#Note may be should submit script to SLURM using the star_submit.sh script
sbatch starindex_submit.sh

# Run the mapping
mkdir results
cd results
mkdir STAR

STAR --genomeDir /fs/ess/PAS1855/users/<YOUROSCID>/<YOURDIR>/STARindexed_ref \
--runThreadN 20 \
--readFilesIn /fs/ess/PAS1855/users/<YOUROSCID>/<YOURDIR>/no_duplicates/<READID>_1_clean_nodup.fastq [/fs/ess/PAS1855/users/nghinguyen/FinalProject/no_duplicates/READID_2_clean_nodup.fastq] \
--outFileNamePrefix /fs/ess/PAS1855/users/<YOUROSCID>/<YOURDIR>/results/STAR/<READID>_, \
--outSAMtype BAM SortedByCoordinate \

#Again, make a star_submit.sh file to submit as a SLURM job
sbatch star_submit.sh
```

