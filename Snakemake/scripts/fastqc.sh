#!/bin/bash
set -e -u -o pipefail

infile=$1
outdir=$2

outfile="$outdir"/$(basename "$infile" .fastq).fastqc.html

echo "Running FastQC for file: $infile , to output dir: $outdir"

echo "FastQC results for file $infile" > "$outfile"
cat "$infile" > "$outfile"
