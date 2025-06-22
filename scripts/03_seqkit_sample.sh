#!/bin/bash
# Step 3: Randomly sample 20 reads using seqkit
# Usage: bash 03_seqkit_sample.sh input.fastq output.fastq

seqkit sample -n 20 -s 100 "$1" -o "$2"
