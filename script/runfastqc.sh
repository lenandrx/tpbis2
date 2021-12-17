#! /bin/bash 

# étape de quality filtering de nos données sur les read 1 et 2 uniquement 

cd ~/mydatalocal/tpngsscarabi_lena/

fastqc -o results/fastqc_analysis/ -t 6 data/*.fastq.gz 