#!/bin/bash
# Step 5: Extract SAM metadata from BAM file
# Usage: bash 05_extract_sam_records.sh input.bam output.txt

samtools view "$1" | \
awk '{nh="NA"; hi="NA"; for(i=12;i<=NF;i++) {if($i ~ /^NH:i:/) nh=$i; if($i ~ /^HI:i:/) hi=$i;} print $1 "\t" $3 "\t" $4 "\t" $6 "\t" $10 "\t" nh "\t" hi}' \
> "$2"
