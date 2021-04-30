# Alignment with STAR aligner for single paired reads

```
#Generate genome indexes of the reference genome
mkdir STARindexed_ref
cd STARindexed_ref

module load python/3.6-conda5.2
source activate star-env

STAR --runThreadN 28 \
--runMode genomeGenerate \
--genomeDir /<YOURDIR>/STARindexed_ref \
--genomeFastaFiles /<YOURDIR>/refgenome/Gmax_275_v2.0.fa \
--genomeSAindexNbases 13


# Run the mapping
mkdir results
cd results
mkdir STAR

STAR --genomeDir /<YOURDIR>/STARindexed_ref \
--runThreadN 20 \
--runMode alignReads 
--readFilesIn /<YOURDIR>/quality_trimmed/<READID>__cleanqt_1.fastq  /<YOURDIR>/quality_trimmed/READID_cleanqt_2.fastq \
--outFileNamePrefix /<YOURDIR>/results/STAR/STARres/<READID>_, \
```


