#!/bin/bash

PATH_TO_FASTQC=/home/mr/programms/FastQC/fastqc
FASTQ_DIR_PATH=$1
OUT_DIR_PATH=$2

# create directory for QC if needed
mkdir -p $OUT_DIR_PATH

# calculate QC with fastqc
$PATH_TO_FASTQC $FASTQ_DIR_PATH*.fastq* -o $OUT_DIR_PATH