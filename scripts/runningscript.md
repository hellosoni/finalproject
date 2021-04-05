##Scrcipts for final project

# Download the SRA files from NCBI

```
#Go to the folder you want to save the SRA files in. 

cd data_raw

#Ask for computing resources:

qsub -I -l nodes=1:ppn=28 -l walltime=04:00:00 -A PAS1855

module load sratoolkit

fastq-dump --split-files SRR9113336
fastq-dump --split-files SRR9113335
fastq-dump --split-files SRR9113334

#add changes to the folder and push online
git add
git status
git commit -m " "
git push


#Set up R and install Rsubread Rbowtie2 and edgeR
#Go to Home
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
```