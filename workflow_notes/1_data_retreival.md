## Data retrieval

Ask for computing resources:

```
qsub -I -l nodes=1:ppn=28 -l walltime=02:00:00 -A PAS1855
```
Download the SRA files from NCBI
```
cd ~/<YOUROSCID>/<YOURDIR>/data_raw
module load sratoolkit
fastq-dump --split-files <SRA_READ_ID>
```
#Create .gitignore file for the SRAs:

```
echo "~/<YOUROSCID>/<YOURDIR>/data_raw" > .gitignore
echo "*fastq" >> .gitignore
git add .gitignore
git commit -m "Added a gitignore file"
```
