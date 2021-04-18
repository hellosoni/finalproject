#!/bin/bash
#SBATCH --account=PAS1855
#SBATCH --time=10:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=6
#SBATCH --cpus-per-task=1
#SBATCH -J sra_download    

cd /fs/ess/PAS1855/users/nghinguyen/FinalProject/data_raw

module load sratoolkit
for srr in $(cat SRR_list.txt)
do 
sbatch inner_script.slurm $srr
done
