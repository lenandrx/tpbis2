#! /bin/bash

#multiqc sur les résultats obtenus par fastqc 

#je me place dans mon dossier de TP
cd ~/mydatalocal/tpngsscarabi_lena/

#les résultats de multiqc iront dans un sous-dossier analyse_controle_qualite de results. 
#les fichiers pris en arguments sont dans fastqc_analysis
multiqc -o results/analyse_controle_qualite/ results/fastqc_analysis/
