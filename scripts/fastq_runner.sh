in_dir="/fs/ess/PAS1855/users/nghinguyen/FinalProject/data_raw"
out_dir="/fs/ess/PAS1855/users/nghinguyen/FinalProject/results/QC"

for fastq in ${in_dir}/*_1.fastq ; do
    sample_ID=$(basename $fastq _1.fastq)
    sbatch fastq_run.sh $in_dir $sample_ID $out_dir 
done