# Quality control

```
#Run FastQC
mkdir QC

/fs/ess/PAS1855/users/<YOUROSCID>/<YOURDIR>/softwares/FastQC/fastqc --threads 2 /fs/ess/PAS1855/users/<YOUROSCID>/<YOURDIR>/data_raw/*_1.fastq /fs/ess/PAS1855/users/<YOUROSCID>/<YOURDIR>/data_raw/*_2.fastq --outdir=QC --outdir=QC


#Add .gitignore for QC files
echo "/fs/ess/PAS1855/users/<YOUROSCID>/<YOURDIR>/QC" > .gitignore
echo "*html" >> .gitignore
echo "*zip" >> .gitignore
git add .gitignore
git commit -m "Added a gitignore file for QC files"

```