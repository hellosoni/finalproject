#!/bin/bash
set -e -u -o pipefail

echo "Counts for $# BAM files:"
cat $@