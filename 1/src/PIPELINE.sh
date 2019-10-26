#!/bin/bash

echo 'start processing\n'

# download sra files from ncbi using fastq-dump
bash ./download_SRA_file.sh
echo 'fastq files downloaded\n'

# get first QC
bash ./qc_of_raw_file.sh
echo 'first QC done\n'

# clean files
bash ./clean_fastq.sh
echo 'fastq files cleaned\n'

# 2nd QC
bash ./qc_of_trimmed_file.sh
echo 'last QC done'

echo 'finish'