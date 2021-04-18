# Quality assessment of trimmed reads

```
#Ask for computing resources:
qsub -I -l nodes=1:ppn=28 -l walltime=03:00:00 -A PAS1855

#Quality control for trimmed reads
mkdir Assessment
module load fastqc/0.11.8
fastqc -t 2 /fs/ess/PAS1855/users/<YOUROSCID>/<YOURDIR>/no_duplicates/<READID>_1_clean_nodup.fastq /fs/ess/PAS1855/users/<YOUROSCID>/<YOURDIR>/no_duplicates/<READID>_2_clean_nodup.fastq --outdir=.


#Create .gitignore file for the SRAs:
echo "/fs/ess/PAS1855/users/<YOUROSCID>/<YOURDIR>/Assessment/" > .gitignore
echo "*zip" >> .gitignore
echo "*html" >> .gitignore
git add .gitignore
git commit -m "Added a gitignore file"