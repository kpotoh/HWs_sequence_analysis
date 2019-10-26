#!/bin/bash

PATH_TO_TRIMMOMATIC=/home/mr/programms/Trimmomatic-0.38/trimmomatic-0.38.jar
PATH_TO_LOG_FILE=../data/interim/first_trimming.log

# input paired-end files 
PATH_TO_R1=../data/raw/SRR6994628_1.fastq.gz
PATH_TO_R2=../data/raw/SRR6994628_2.fastq.gz

# output files
PATH_TO_PAIRED1=../data/interim/SRR6994628_1P.fastq.gz
PATH_TO_UNPAIRED1=../data/interim/SRR6994628_1U.fastq.gz
PATH_TO_PAIRED2=../data/interim/SRR6994628_2P.fastq.gz
PATH_TO_UNPAIRED2=../data/interim/SRR6994628_2U.fastq.gz

# trimming
java -jar $PATH_TO_TRIMMOMATIC PE -threads 4 -phred33 -trimlog $PATH_TO_LOG_FILE \
$PATH_TO_R1 $PATH_TO_R2 \
$PATH_TO_PAIRED1 $PATH_TO_UNPAIRED1 $PATH_TO_PAIRED2 $PATH_TO_UNPAIRED2 \
LEADING:20 TRAILING:20 SLIDINGWINDOW:4:18 MINLEN:40 AVGQUAL:25