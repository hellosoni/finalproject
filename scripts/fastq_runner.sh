in_dir="/<YOUR_DIR>/data_raw"
out_dir="/<YOUR_DIR>/results/QC"

for fastq in ${in_dir}/*_1.fastq ; do
    sample_ID=$(basename $fastq _1.fastq)
    sbatch fastq_run.sh $in_dir $sample_ID $out_dir 
done