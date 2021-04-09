# Scrcipts for final project ###

```
#Ask for computing resources:

qsub -I -l nodes=1:ppn=28 -l walltime=03:00:00 -A PAS1855

# Download the SRA files from NCBI
#Go to the folder you want to save the SRA files in. 

cd data_raw
module load sratoolkit

fastq-dump --split-files SRR9113336
fastq-dump --split-files SRR9113335
fastq-dump --split-files SRR9113334

#Create .gitignore file for the SRAs:
echo "/fs/ess/PAS1855/users/nghinguyen/Final\ Project/data_raw" > .gitignore
echo "*fastq" >> .gitignore
git add .gitignore
git commit -m "Added a gitignore file"

#Download reference genome Gmax_275_V2.0.fa from Phytozome/JGI Genomes manually on the website. Then upload to OSC in the reference genome folder
# Unzip the ref genome:
gunzip Gmax_275_v2.0.fa.gz
#Add a gitignore for this file:
echo "/fs/ess/PAS1855/users/nghinguyen/Final\ Project/refgenome" > .gitignore
echo "*fa" >> .gitignore
git add .gitignore
git commit -m "Added a gitignore file for ref genome"

#Quality Control with FastQC:
#Install FastQC
wget https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.9.zip
unzip fastqc_v0.11.9.zip
rm fastqc_v0.11.9.zip
cd FastQC
chmod +x fastqc
./fastqc
cd ..

#Run FastQC
mkdir QC
module load fastqc
fastqc -t 27 /fs/ess/PAS1855/users/nghinguyen/Final\ Project/data_raw/*.fastq --outdir=QC

#Add .gitignore for QC files
echo "/fs/ess/PAS1855/users/nghinguyen/Final\ Project/QC" > .gitignore
echo "*html" >> .gitignore
echo "*zip" >> .gitignore
git add .gitignore
git commit -m "Added a gitignore file for QC files"

#Set up R and install Rsubread Rbowtie2 and edgeR
#Go to Home Directory
cd #HOME
module load R
R

#Add Bioconductor
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("Rsubread")
BiocManager::install("Rbowtie2")
BiocManager::install("edgeR")
quit()

#Add changes to the folder and push online
git add
git status
git commit -m "Messages "
git push
```