#! /bin/bash

# download the file for the wild type 3 and the mutant 5 

cd ~/mydatalocal/tpngsscarabi_lena/
echantillon=("SRR8257102 SRR8257104") 

#parallel fastq dump permet de télécharger les données
# découper en 8 threads pour diviser les tâches

for i in $echantillon
do
echo $i
parallel-fastq-dump --sra-id $i --threads 8 --outdir data --split-files --gzip
rm ${i}_3.fastq.gz #permet de supprimer tout de suite le troisième read
done

