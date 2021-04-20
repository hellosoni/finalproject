# Quality control

```
#Run FastQC
mkdir QC
module load fastqc/0.11.8
fastqc --threads 2 /fs/ess/PAS1855/users/<YOUROSCID>/<YOURDIR>/data_raw/*_1.fastq /fs/ess/PAS1855/users/<YOUROSCID>/<YOURDIR>/data_raw/*_2.fastq --outdir=QC 

# Or alternately using the fastq_run script to run as SLURM job.


#Add .gitignore for QC files
echo "/fs/ess/PAS1855/users/<YOUROSCID>/<YOURDIR>/QC" > .gitignore
echo "*html" >> .gitignore
echo "*zip" >> .gitignore
git add .gitignore
git commit -m "Added a gitignore file for QC files"

# Note: For MultiQC 
module load python/3.6-conda5.2
source activate multiqc-env
mkdir multiqc_out
multiqc QC/ -o multiqc_out/
```