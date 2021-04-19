in_dir=/fs/ess/PAS1855/users/nghinguyen/FinalProject/data_raw/
out_dir=/fs/ess/PAS1855/users/nghinguyen/FinalProject/results/QC
for fastq in ${in_dir}/*.fastq ; do
sample_ID=$(basename $fastq _QC.fastq)
echo $sample_ID
sbatch fastq_run.sh $fastq_files $output_dir $sample_ID
done