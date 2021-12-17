#! /bin/bash
cd ~/mydatalocal/tpngsscarabi_lena/

# on récupère le transcriptome d'arabidopsis et on le met dans le fichier data
# le document .fa contient la séquence 
# le document .gtf contient toute l'information générale 

wget -O data/arabidopsis_transcriptome.fa "https://ics.hutton.ac.uk/atRTD/RTD2/AtRTD2_19April2016.fa"
wget -O data/arabidopsis_transcriptome.gtf "https://ics.hutton.ac.uk/atRTD/RTD2/AtRTD2_19April2016.gtf"

# on crée le salmon index nécessaire pour run alevin ensuite, rangé dans un sous-dosser index_salmon dans le dossier data_processed

salmon index -t data/arabidopsis_transcriptome.fa -p 8 -k 31 -i data_processed/index_salmon

# il faut ensuite créer la tg map : un ficher de correspondance avec les transcrits 
#on prend la neuvième colonne des lignes qui correspondent à des exons (première ligne)
# on sélectionne les identifiants seulement avec les substr, sans les guillemets etc
# on met ce qu'on obtient dans le fichier txp2gene qui se trouve dans le dossier data_processed

bioawk -c gff '$feature=="exon" {print $9}' < data/arabidopsis_transcriptome.gtf | awk -F " " '{print substr($2,2,length($2)-3) "\t" substr($4,2,length($4)-3)}' > data_processed/txp2gene.tsv

