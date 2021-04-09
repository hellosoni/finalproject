
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
Install FastQC
```
mkdir softwares
cd ~/softwares
wget https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.9.zip
unzip fastqc_v0.11.9.zip
rm fastqc_v0.11.9.zip
cd FastQC
chmod +x fastqc
./fastqc
cd ..
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

```

