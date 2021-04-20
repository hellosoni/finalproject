in_dir="/fs/ess/PAS1855/users/nghinguyen/FinalProject/data_raw"
bbduk="/fs/ess/PAS1855/users/nghinguyen/FinalProject/softwares/bbmap"
out_dir="/fs/ess/PAS1855/users/nghinguyen/FinalProject/results/trimmed/adapter_trimmed"
ref="/fs/ess/PAS1855/users/nghinguyen/FinalProject/softwares/bbmap/resources/adapters.fa"


for fastq in ${in_dir}/*_1.fastq ; do
    sample_ID=$(basename $fastq _1.fastq) 
   sbatch adapter_trimming.sh $in_dir $sample_ID $bbduk $out_dir $ref 
done
