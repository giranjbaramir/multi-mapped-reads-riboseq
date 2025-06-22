#!/bin/bash
# Step 4: Re-align 20 sampled reads allowing for high multi-mapping
# Usage: bash 04_star_remap_20reads.sh input.fastq output_prefix star_index_dir

STAR --runThreadN 4 \
  --genomeDir "$3" \
  --readFilesIn "$1" \
  --outFileNamePrefix "$2" \
  --outSAMtype BAM SortedByCoordinate \
  --outFilterMultimapNmax 500 \
  --winAnchorMultimapNmax 500 \
  --outSAMmultNmax 1000
