in_dir="<YOUR_DIR>/data_raw"
bbduk="<YOUR_DIR>/softwares/bbmap"
out_dir="/<YOUR_DIR>/results/trimmed/adapter_trimmed"
ref="<YOUR_DIR>/softwares/bbmap/resources/adapters.fa"


for fastq in ${in_dir}/*_1.fastq ; do
    sample_ID=$(basename $fastq _1.fastq) 
   sbatch adapter_trimming.sh $in_dir $sample_ID $bbduk $out_dir $ref 
done
