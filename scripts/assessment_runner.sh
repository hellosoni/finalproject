in_dir="/<YOUR_DIR>/results/trimmed/quality_trimmed"
out_dir="/<YOUR_DIR>/results/ASsessment"

for fastq in ${in_dir}/*_clean_1.fastq ; do
    sample_ID=$(basename $fastq _clean_1.fastq)
    sbatch fastq_run.sh $in_dir $sample_ID $out_dir 
done