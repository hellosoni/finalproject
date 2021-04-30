# Quality assessment of trimmed reads

```
#Ask for computing resources:
qsub -I -l nodes=1:ppn=28 -l walltime=03:00:00 -A PAS1855

#Quality control for trimmed reads
mkdir Assessment
module load fastqc/0.11.8
fastqc --threads 2 <YOUROSCID>/<YOURDIR>/results/trimmed/quality_trimmed/<READ_ID>_1.fastq <YOUROSCID>/<YOURDIR>results/trimmed/quality_trimmed/<READ_ID>_2.fastq --outdir=<YOUROSCID>/<YOURDIR>/results/ASsessment


#Create .gitignore file for the SRAs:
echo "/fs/ess/PAS1855/users/<YOUROSCID>/<YOURDIR>/Assessment/" > .gitignore
echo "*zip" >> .gitignore
echo "*html" >> .gitignore
git add .gitignore
git commit -m "Added a gitignore file"

#Additionally, run the