#! /bin/bash

#script deuxième semaine : on importe les données de tous les échantillons

cd ~/mydatalocal/tpngsscarabi_lena/data/

#les quatre premiers sont des WT, les trois suivants sont des mutants 

wget -r --user=tp_ngs --password='Arabido2021!' https://flower.ens-lyon.fr/tp_ngs/scarabi/Alevin/quant

# parmi ces données on n'a gardé que le quant, et on a supprimé le reste 


