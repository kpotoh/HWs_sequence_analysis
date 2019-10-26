#!/bin/bash

# iterate in the list of sra and download splitted and gzipped files (if layout is paired)
cat ../data/raw/my_sra_list.txt | xargs -I{} fastq-dump --outdir ../data/raw/ --clip --split-3 --gzip {}