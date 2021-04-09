# Quality control

```
#Run FastQC
mkdir QC

/fs/ess/PAS1855/users/nghinguyen/FinalProject/softwares/FastQC/fastqc --threads 2 /fs/ess/PAS1855/users/nghinguyen/FinalProject/data_raw/*_1.fastq /fs/ess/PAS1855/users/nghinguyen/FinalProject/data_raw/*_2.fastq --outdir=QC --outdir=QC


#Add .gitignore for QC files
echo "/fs/ess/PAS1855/users/nghinguyen/FinalProject/QC" > .gitignore
echo "*html" >> .gitignore
echo "*zip" >> .gitignore
git add .gitignore
git commit -m "Added a gitignore file for QC files"

```