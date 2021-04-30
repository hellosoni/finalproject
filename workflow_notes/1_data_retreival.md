## Data retrieval

Logging in OSC

```
ssh your_OSC_ID@owens.osc.edu
P@$SwOrD
```

Ask for computing resources:

```
qsub -I -l nodes=1:ppn=28 -l walltime=02:00:00 -A PAS1855
```
Download the SRA files from NCBI
```
cd ~/<YOUROSCID>/<YOURDIR>/data_raw
module load sratoolkit
fastq-dump --split-files SRR9113336
fastq-dump --split-files SRR9113335
fastq-dump --split-files SRR9113334
```
#Create .gitignore file for the SRAs:
```
echo "~/<YOUROSCID>/<YOURDIR>/data_raw" > .gitignore
echo "*fastq" >> .gitignore
git add .gitignore
git commit -m "Added a gitignore file"
```
