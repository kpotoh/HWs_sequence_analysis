#!/bin/bash

QC_PATH=../data/qc/first_check/
FASTQ_PATH=../data/raw/

# create directory for QC if needed
mkdir -p $QC_PATH

# calculate QC with fastqc
/home/mr/programms/FastQC/fastqc $FASTQ_PATH*.fastq* -o $QC_PATH