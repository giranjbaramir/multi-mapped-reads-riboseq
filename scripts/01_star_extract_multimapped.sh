#!/bin/bash
# Step 1: Run STAR to extract unmapped reads (multi-mapped reads included)
# Usage: bash 01_star_extract_multimapped.sh input.fastq output_prefix star_index_dir

STAR --runThreadN 4 \
  --genomeDir "$3" \
  --readFilesIn "$1" \
  --outFileNamePrefix "$2" \
  --outSAMtype BAM SortedByCoordinate \
  --alignEndsType EndToEnd \
  --outFilterMultimapNmax 1 \
  --outSAMattributes All \
  --outReadsUnmapped Fastx
