#!/bin/bash
# Step 2: Run FastQC on STAR unmapped reads (multi-mapped included)
# Usage: bash 02_fastqc_unmapped.sh unmapped_reads.fastq output_dir

fastqc "$1" -o "$2"
