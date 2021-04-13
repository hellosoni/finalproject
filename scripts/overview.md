# Overview before final submission
I've been working on two set of pipelines for the final project.One pipeline is more manual shell scripts and one is attempting to create a Snakemake pipeline. So far for the manual shell pipeline I'm at the step of read alignment using STAR aligner. Currently, I have 6 scripts for this part include:

- Data_retrieval: This script include steps to download the SRA files from NCBI
- Software installation: This script include step to download and install some programs for RNAseq analysis such as BBTools and STAR aligner. 
- Quality control: This script include steps for checking the sequence quality using FastQC and MultiQC tools.
- Preprocessing: This script include steps for trimming the adapters and duplications of the reads.
- Quality Assessment: This script include steps for quality assessment of the trimmed reads using FastQC and MultiQC
- Alignment: This script include steps to align the reads to the reference genome. Additionally, I created the starindex_submit.sh to submit the job of indexing the reference genome to the SLURM. I planned to do the same for the mapping step. 


I'm still not sure about the Snakemake pipeline but I'm trying to put together a Snakefile to see if it can be run for the entire pipeline. For my Snakemake part, I generated 4 scripts: count, qc, map and trim that are similar to the homework last week.


# To-do list
- Finish the mapping step using STAR aligner.
- Try to install and use FeatureCount program to calculate number of reads per genes.
- Try to put together the Snakemake pipeline.



