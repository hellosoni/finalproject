#!/bin/bash
set -e -u -o pipefail

echo "FASTQ file: $1 after trimming"
cat "$1"