
# Software installation

Set up R and install Rsubread Rbowtie2 and edgeR
```
#Go to Home Directory
cd #HOME
module load R
R
```

Add Bioconductor
```
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("Rsubread")
BiocManager::install("Rbowtie2")
BiocManager::install("edgeR")
quit()
```
Running
```
module load fastqc/0.11.8
```
Install BBTools
```
cd ~/softwares
wget https://sourceforge.net/projects/bbmap/files/BBMap_38.90.tar.gz
tar -xvzf BBMap_38.90.tar.gz
rm BBMap_38.90.tar.gz
# testing BBTools:
bash ./bbmap/bbmerge.sh

##Create .gitignore file for the softwares:
echo "/fs/ess/PAS1855/users/nghinguyen/Final\ Project/softwares/" > .gitignore
echo "/fs/ess/PAS1855/users/nghinguyen/Final\ Project/softwares/FastQC/" > .gitignore
echo "/fs/ess/PAS1855/users/nghinguyen/Final\ Project/softwares/bbmap/" > .gitignore
git add .gitignore
git commit -m "Added a gitignore for softwares folder"

#Install STAR Aligner
cd ~/software/
conda create -y -n star-env -c bioconda star

# Note: For MultiQC 
module load python/3.6-conda5.2
source activate multiqc-env

```

