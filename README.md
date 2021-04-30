# This is the repository for the Final Project.

## Project overview:
In this project, I used the transcriptomic data from Jahan et al., 2020 paper titled "Glyceollin Transcription Factor GmMYB29A2 Regulates Soybean Resistance to *Phytophthora sojae* to rerun the RNASeq pipeline according to the authors' methodology.  The authors used RNA sequencing technology in one of their experiments to identify the transcription factor candidates in the transformed Williams82 hairy roots and H63 seeds at their respective times of maximum glyceollin accumulation in response to cell wall glucan elicitor from *Phytophthora sojae*. By rerunning this pipeline for RNA Seq, I can gain more practical experience on running the pipeline for my own research project. The reads data of the project can be downloaded from NCBI using the accession # **GSE131686**.

## Set of Scripts:
For the overall pipeline, I created a set of scripts to run  on the SLURM job manager. Each of the script is accompanied by a runner script that include my detailed filepaths and the "for" loop that can be used to run the actual scripts with the set variables. All the scripts can be found in my /scripts folder. My pipeline is from data quality check using FastQC until the reads alignment step using Star aligner program. Details of each script's functions is below. 

- "fastq_run.sh": This script is used to check the sequence quality using FastQC. The runner script is "fastq_runner.sh".
- "adapter_trimming.sh": This script is used to trim the adapters of the reads using bbduk program.The runner script is "adapter_trimmingrunner.sh"
- "quality_trimming.sh": This script is used to trim the adapters of the reads using bbduk program.The runner script is "quality_trimmingrunner.sh"
-"starindex_submit.sh": This script is used to index the soybean reference genome fasta file (Gmax_275_v2.0.fa). 
- "star_submit": This script is used to align the reads to the reference genome. The runner script is "star_runner".

## Snakemake pipepine
For Snakemake pipeline, I created a single Snakefile scripts with inputs, outputs and the command for Fastqc, adapter trimming, quality trimming, indexing reference genome and mapping reads using Star program similar to the above pipeline.

I created the config.yaml file include the input, output and log directories to accompany the Snakefile while running.   Then I created a script named "snakemake_submit.sh" to run the Snakemake pipeline in SLURM. Both of these can be found in the "/Snakemake/workflow" folder.I also created two files fastqc.yml and star.yml in the "Snakemake/workflow/env/" folder that contains information for calling the two programs in Snakemake files.

