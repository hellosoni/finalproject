in_dir="/<YOUR_DIR>/results/trimmed/adapter_trimmed"
bbduk="/<YOUR_DIR>/softwares/bbmap"
out_dir="/<YOUR_DIR>/results/trimmed/quality_trimmed"


for fastq in ${in_dir}/*_clean_1.fastq ; do
    sample_ID=$(basename $fastq _clean_1.fastq) 
   sbatch quality_trimming.sh $in_dir $sample_ID $bbduk $out_dir 
done