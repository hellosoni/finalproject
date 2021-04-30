# Quality assessment of trimmed reads

```
#Ask for computing resources:
qsub -I -l nodes=1:ppn=28 -l walltime=03:00:00 -A PAS1855

#Quality control for trimmed reads
mkdir Assessment
module load fastqc/0.11.8
fastqc --threads 2 /<YOURDIR>/results/trimmed/quality_trimmed/<READ_ID>_1.fastq /<YOURDIR>results/trimmed/quality_trimmed/<READ_ID>_2.fastq --outdir=/<YOURDIR>/results/ASsessment


#Create .gitignore file for the SRAs:
echo "/<YOURDIR>/Assessment/" > .gitignore
echo "*zip" >> .gitignore
echo "*html" >> .gitignore
git add .gitignore
git commit -m "Added a gitignore file"

