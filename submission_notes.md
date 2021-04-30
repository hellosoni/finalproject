# Notes for grading the project

My project can be rerun by running a set of scripts in the /scripts folder after downloading the data from NCBI. Information of how to download the data as well as details on running each section is described in each section notes in the workflow folders. Each of the script is accompanied by a "runner" script where you can reset my hardcoded file path for the variables with your filepaths before you run the script. Moreover, the runner scipt contains the "for" loop that can be used to run the script with the set variables. 
There are some files in the repository should be ignored. They include the files in data_raw, softwares, and results folders of the first section and folder data, log and results in the Snakemake folder. 

Moreover, I created a Snakemake pipeline that can be used to rerun the whole pipeline. You can create your own Snakemake folder with data, results, log and workflow directory. You can add the Snakefile in the workflow folder and can run the snakefile once you are in there using the snakemake_submit.sh script to submit the job to the SLURM job using the below command:
```
sbatch snakemake_submit.sh

or

snakemake -j6 --cluster "sbatch --account=<YOUR_ACCOUNT>"
```

 Addtionally, you can make a slurm profile and run the pipeline from you slurm profile. You should make another config.yaml file in the slurm_profile folder include information of the account, time and other resources you would like to request while running the Snakemake pipeline. My config.yaml file can be found in the slurm_profile folder within the Snakemake folder. Then you can use this command below to run the pipeline with the slurm profile.
```
snakemake --profile slurm_profile
```
The resulting files can be found in the results folder for each section. Log information of the run can be found in the log folder.