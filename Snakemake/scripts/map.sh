#!/bin/bash
set -e -u -o pipefail

echo "BAM from FASTQ file: $1"
cat "$1"