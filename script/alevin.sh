#! /bin/bash
cd ~/mydatalocal/tpngsscarabi_lena/

# il faut maintenant faire alevin, une fois pour le wt et une fois pour le mutant 
salmon alevin -l ISR -1 data/SRR8257102_1.fastq.gz -2 data/SRR8257102_2.fastq.gz \
  --chromium -i data_processed/index_salmon/ -p 8 -o results/results_alevin_wt/ \
  --tgMap data_processed/txp2gene.tsv --dumpFeatures

salmon alevin -l ISR -1 data/SRR8257104_1.fastq.gz -2 data/SRR8257104_2.fastq.gz \
  --chromium -i data_processed/index_salmon/ -p 8 -o results/results_alevin_mutant/ \
  --tgMap data_processed/txp2gene.tsv --dumpFeatures