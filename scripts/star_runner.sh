in_dir="/<YOUR_DIR>/results/trimmed/quality_trimmed/"
ref="/<YOUR_DIR>/results/STAR/STARindexed_ref/Gmax_275_v2.0_star/"
out_dir="/<YOUR_DIR>/FinalProject/results/STAR/STARres/"

for fastq in ${in_dir}/*_cleanqt_1.fastq ; do
    sample_ID=$(basename $fastq _cleanqt_1.fastq) 
    echo $sample_ID
   sbatch star_submit.sh $in_dir $sample_ID  $out_dir $ref 
done

