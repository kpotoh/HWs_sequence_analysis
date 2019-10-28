#!/bin/bash

echo 'start processing'
echo

# download sra files from ncbi using fastq-dump
bash ./download_SRA_file.sh
echo '------------------------'
echo 'fastq files downloaded'
echo

# get first QC
bash ./qc.sh ../data/raw/ ../data/qc/first_check/
echo '------------------------'
echo 'first QC done'
echo

# clean files
bash ./clean_fastq.sh
echo '------------------------'
echo 'fastq files cleaned'
echo

# 2nd QC
bash ./qc.sh ../data/interim/ ../data/qc/check_trimmed/
echo '------------------------'
echo 'last QC done'

# contamination QC
bash ./fast_screen_qc.sh
echo '------------------------'
echo 'fastq screen QC done'

echo 'finish'