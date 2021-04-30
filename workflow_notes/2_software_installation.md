
# Software installation

```
Install BBTools

cd ~/softwares
wget https://sourceforge.net/projects/bbmap/files/BBMap_38.90.tar.gz
tar -xvzf BBMap_38.90.tar.gz
rm BBMap_38.90.tar.gz

# Testing BBTools:
bash ./bbmap/bbmerge.sh

#Create .gitignore file for the softwares:

echo "/<YOUR_DIR>/softwares/" > .gitignore
echo "/<YOUR_DIR>/softwares/FastQC/" > .gitignore
echo "/<YOUR_DIR>/softwares/bbmap/" > .gitignore
git add .gitignore
git commit -m "Added a gitignore for softwares folder"

#Install STAR Aligner

cd ~/software/
conda create -y -n star-env -c bioconda star

#Set up R and install Rsubread 
#Go to Home Directory

cd #HOME
module load R
R

#Add Bioconductor
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("Rsubread")
quit()

#Download directly from Sourceforge:
wget https://sourceforge.net/projects/subread/files/latest/download/subread-2.0.2-source.tar

tar -xvzf subread-2.0.2-source.tar
rm subread-2.0.2-source.tar
```

