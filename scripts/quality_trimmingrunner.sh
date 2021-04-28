in_dir="/fs/ess/PAS1855/users/nghinguyen/FinalProject/results/trimmed/adapter_trimmed"
bbduk="/fs/ess/PAS1855/users/nghinguyen/FinalProject/softwares/bbmap"
out_dir="/fs/ess/PAS1855/users/nghinguyen/FinalProject/results/trimmed/quality_trimmed"


for fastq in ${in_dir}/*_clean_1.fastq ; do
    sample_ID=$(basename $fastq _clean_1.fastq) 
   sbatch quality_trimming.sh $in_dir $sample_ID $bbduk $out_dir 
done