#! /bin/bash

time /fslhome/jblack33/fsl_groups/fslg_RidgeLab/compute/software/blast/ncbi-blast-2.2.31+/bin/blastn \
	-query inputFastas$2/$1 \
	-db blastdb$2/Database$2 \
	-outfmt 5\
	-out blastOutput$2/$1 

exit $?
