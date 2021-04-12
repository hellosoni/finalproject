# Alignment with STAR aligner

```
#Index the reference genome
mkdir STARindexed_ref
cd STARindexed_ref
STAR --runThreadN 20 \
--runMode genomeGenerate \
--genomeDir /fs/ess/PAS1855/users/nghinguyen/FinalProject/refgenome \
--genomeFastaFiles /fs/ess/PAS1855/users/nghinguyen/FinalProject/refgenome/Gmax_275_v2.0.fa \
--sjdbOverhang 100

# Run the mapping



