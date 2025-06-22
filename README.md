# 🔍 Quantifying Multi-Mapped Reads in Ribo-Seq

This repository accompanies a focused side analysis from my master's project, which aimed to **quantify and investigate the origin and nature of multi-mapped reads** in ribosome profiling (Ribo-Seq) data.

> 📘 **Mini-Project Title**: Quantifying Multi-Mapped Reads in Our Ribo-Seq Data  
> 👨‍💻 **Author**: Amir Ranjbar  
> 🎓 **Program**: Master's in Bioinformatics  
> 🗓️ **Year**: 2025

---

## 📄 Project Report (PDF)

🖨️ You can view or download the full printable report here:

[![View Report](https://img.shields.io/badge/View_Report-PDF-blue)](report/Quantifying-Multi-Mapped-Reads-in-Our-Ribo-Seq-Data-V2.pdf)

---

## 🔬 Analysis Overview

This project aimed to trace and characterize the **multi-mapped reads** in our STAR-aligned Ribo-Seq data, following the strategy below:

### 1. STAR Alignment with Unmapped Read Output  
Extract unmapped reads (including multi-mapped) from STAR alignment output using `--outReadsUnmapped Fastx`.

### 2. FastQC on Unmapped Reads  
Run FastQC on the extracted unmapped FASTQ file for quality control.

### 3. Random Read Subsampling  
Randomly select 20 reads using `seqkit sample`.

### 4. Re-alignment of 20 Reads with STAR  
Allow high multi-mapping (up to 500 loci) to confirm that reads are indeed **multi-mapped**.

### 5. SAM Record Extraction  
Extract alignment metadata (read ID, position, CIGAR, NH, HI tags) from the new BAM file using `samtools` and `awk`.

### 6. Excel Workbook Generation  
Parse the SAM data in Python and write a separate sheet for each read to an Excel workbook (`readID_RNAME_POS_CIGAR_seq_NH_HI_split.xlsx`).

---

Each script can be found in the [`scripts/`](scripts/) folder, with individual shell or Python scripts for each step.

---

## 📚 Reference

- Deschamps-Francoeur et al., (2020). *Handling multi-mapped reads in RNA-seq.* [Computational and Structural Biotechnology Journal](https://doi.org/10.1016/j.csbj.2020.06.014)

---
