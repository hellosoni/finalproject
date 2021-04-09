# Quality assessment of trimmed reads

```
#Ask for computing resources:
qsub -I -l nodes=1:ppn=28 -l walltime=01:00:00 -A PAS1855

#Quality control for trimmed reads
mkdir Assessment
/fs/ess/PAS1855/users/nghinguyen/Final\ Project/softwares/FastQC/fastqc -t /fs/ess/PAS1855/users/nghinguyen/Final\ Project/no_duplicates/*_1_clean_nodup.fastq /fs/ess/PAS1855/users/nghinguyen/Final\ Project/no_duplicates/*_2_clean_nodup.fastq --outdir=.