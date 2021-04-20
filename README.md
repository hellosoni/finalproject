This is the repository for the Final Project.

#For Snakemake
BASE_DIR ="/fs/ess/PAS1855/users/nghinguyen/FinalProject/"
BBDUK=BASE_DIR  + "softwares/bbmap/bbduk.sh"
REF_FA = BASE_DIR + "Snakemake/refgenome/Gmax_275_v2.0.fa"
REF_GFF = BASE_DIR + "Snakemake/refgenome/Gmax_275_Wm82.a2.v1.gene.gff3"
SAMPLES, = glob_wildcards(BASE_DIR + "Snakemake/data/{SRR}_1.fastq")
