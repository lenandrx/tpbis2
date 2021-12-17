#! /bin/bash 

#Importer le fichier csv des associations de marqueurs de gènes pour chaque type cellulaire 

cd ~/mydatalocal/tpngsscarabi_lena/data

wget --user=tp_ngs --password='Arabido2021!' https://flower.ens-lyon.fr/tp_ngs/scarabi/Li2016/Markers.csv

#On importe les données brutes obtenues par dissection de chaque type cellulaire 

wget -r --no-parent --user=tp_ngs --password='Arabido2021!' https://flower.ens-lyon.fr/tp_ngs/scarabi/Li2016/Salmon/Counts_Salmon/ 

