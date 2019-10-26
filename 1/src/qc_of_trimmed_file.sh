#!/bin/bash

QC_PATH=../data/qc/check_trimmed/
FASTQ_PATH=../data/interim/

# create directory for QC if needed
mkdir -p $QC_PATH

# calculate QC with fastqc
/home/mr/programms/FastQC/fastqc $FASTQ_PATH*.fastq* -o $QC_PATH