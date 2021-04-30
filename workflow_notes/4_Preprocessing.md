# Preprocessing data with BBTools

```
#Ask for computing resources:
qsub -I -l nodes=1:ppn=28 -l walltime=04:00:00 -A PAS1855

#Make trimmed directory
cd <YOUR_DIR>
mkdir trimming no_duplicates
#Note: There is adapter reference in bbmap/resources/

#Adapter Trimming

<YOUR_DIR>/softwares/bbmap/bbduk.sh in1=<YOUR_DIR>/<READ_ID>_1.fastq in2=<READ_ID>_2.fastq out1=/<YOUR_DIR>/results/trimmed/<READ_ID>_clean_1.fastq out2=/<YOUR_DIR>/<READ_ID>_clean_2.fastq ref=/<YOUR_DIR>/softwares/bbmap/resources/adapters.fa
 ktrim=r k=23 mink=11 hdist=1 tpe tbo


#Quality trimming
<YOUR_DIR>/softwares/bbmap/bbduk.sh  in1=<YOUR_DIR>/<READ_ID>_clean_1.fastq in2=<YOUR_DIR>/<READ_ID>_clean_2.fastq out1=/<YOUR_DIR>/results/trimmed/quality_trimmed/<READ_ID>_cleanqt_1.fastq out2=/<YOUR_DIR>/results/trimmed/quality_trimmed/<READ_ID>_cleanqt_2.fastq qtrim=r trimq=10



#Create .gitignore file for the trimmed reads:
echo "/fs/ess/PAS1855/users/<YOUROSCID>/<YOURDIR>/results/trimmed" > .gitignore
echo "*fastq" >> .gitignore
echo "*fa" >> .gitignore
git add .gitignore
git commit -m "Added a gitignore file"
```