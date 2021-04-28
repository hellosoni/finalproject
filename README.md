# This is the repository for the Final Project.

## Project overview:
In this project, I used the transcriptomic data from Jahan et al., 2020 to rerun the RNA Seq pipeline according to the authors' methodology.  The authors used RNA sequencing technology in one of their experiments to identify the transcription factor candidates in the transformed Williams82 hairy roots and H63 seeds at their respective times of maximum glyceollin accumulation in response to cell wall glucan elicitor from *Phytophthora sojae*. By rerunning this pipeline for RNA Seq, I can gain more practical experience on running the pipeline for my own research project. The data of the project can be downloaded from NCBI using the accession # **GSE131686**.

## Set of Scripts:
For each section of the pipeline, I created a set of scripts to run  on the SLURM job manager. Each of the script is accompanied by a runner script that include the detailed filepaths and the "for" loop that can be used to run the actual scripts with the set variables. Details of each script's functions is below. 

- "fastq_run.sh": This script include codes to check the sequence quality using FastQC. The runner script is "fastq_runner.sh".
- "adapter_trimming.sh": This script include codes for trimming the adapters of the reads using bbduk program.The runner script is "adapter_trimmingrunner.sh"
- "quality_trimming.sh": This script include codes for trimming the adapters of the reads using bbduk program.The runner script is "quality_trimmingrunner.sh"
- "star_submit": This script include the codes to align the reads to the reference genome. The runner script is "star_runner"


## Snakemake pipepine
For Snakemake pipeline, I created a Snakefile with inputs, outputs and include the the scripts created above to run the entire pipeline. Then I also created a script named "snakemake_submit.sh" to run the Snakemake pipeline in SLURM. Both of these can be found in the /Snakemake/workflow folder.

#Setting for the file paths I used are below. They can be replaced with your own directories. 

BASE_DIR ="/fs/ess/PAS1855/users/nghinguyen/FinalProject/"
BBDUK = BASE_DIR + "softwares/bbmap/"
ADAPTER= BASE_DIR + "/softwares/bbmap/resources/adapters.fa"
REF_FA = BASE_DIR + "/data_raw/refgenome/Gmax_275_v2.0.fa"