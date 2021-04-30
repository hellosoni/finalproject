FASTA="/<YOUR_DIR>/data_raw/refgenome/Gmax_275_v2.0.fa"
dir="/<YOUR_DIR>/results/STAR/STARindexed_ref"
sbatch starindex_submit $FASTA $dir
