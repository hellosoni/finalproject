# Preprocessing data with BBTools

```
#Ask for computing resources:
qsub -I -l nodes=1:ppn=28 -l walltime=04:00:00 -A PAS1855

#Make trimmed directory
cd ~/FinalProject
mkdir trimming no_duplicates
#Note: There is adapter reference in bbmap/resources/

#Adapter Trimming

/fs/ess/PAS1855/users/nghinguyen/FinalProject/softwares/bbmap/bbduk.sh -Xmx1g in1=$i\_1.fastq in2=$i\_2.fastq out1=/fs/ess/PAS1855/users/nghinguyen/FinalProject/results/trimmed/${i##*/}\_clean_1.fastq out2=/fs/ess/PAS1855/users/nghinguyen/FinalProject/results/trimmed/${i##*/}\_clean_2.fastq ref=/fs/ess/PAS1855/users/nghinguyen/FinalProject/softwares/bbmap/resources/adapters.fa
 ktrim=r k=23 mink=11 hdist=1 tpe tbo


#Quality trimming
fs/ess/PAS1855/users/nghinguyen/FinalProject/softwares/bbmap/bbduk.sh -Xmx1g in1=$i\_clean_1.fastq in2=$i\_clean_2.fastq out1=/fs/ess/PAS1855/users/nghinguyen/FinalProject/results/trimmed/quality_trimmed/${i##*/}\_cleanqt_1.fastq out2=/fs/ess/PAS1855/users/nghinguyen/FinalProject/results/trimmed/quality_trimmed/${i##*/}\_cleanqt_2.fastq qtrim=r trimq=10



#Create .gitignore file for the trimmed reads:
echo "/fs/ess/PAS1855/users/<YOUROSCID>/<YOURDIR>/results/trimmed" > .gitignore
echo "*fastq" >> .gitignore
echo "*fa" >> .gitignore
git add .gitignore
git commit -m "Added a gitignore file"
```