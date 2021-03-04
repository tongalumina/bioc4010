#/bin/bash

pdbcode=$1
code2=`echo $pdbcode|cut -b 2-3 | tr [A-Z] [a-z]`
ftplink="ftp://ftp.wwpdb.org/pub/pdb/data/structures/divided/pdb"
pdblink="${ftplink}/${code2}/pdb${pdbcode}.ent.gz"
#echo $pdblink
UpPDBCODE=`echo $pdbcode |tr [a-z] [A-Z]`
wget $pdblink -O - | gunzip > $UpPDBCODE.pdb
wget "https://www.rcsb.org/fasta/entry/${UpPDBCODE}/display" -O $UpPDBCODE.fa
