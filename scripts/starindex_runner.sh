FASTA="/fs/ess/PAS1855/users/nghinguyen/FinalProject/data_raw/refgenome/Gmax_275_v2.0.fa"
dir="/fs/ess/PAS1855/users/nghinguyen/FinalProject/results/STAR/STARindexed_ref"
sbatch starindex_submit $FASTA $dir
