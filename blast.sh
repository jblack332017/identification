#! /bin/bash

time /fslhome/jblack33/fsl_groups/fslg_RidgeLab/compute/software/blast/ncbi-blast-2.2.31+/bin/blastn \
	-query inputFastas/$1 \
	-db blastdb/firstDatabase \
	-outfmt 5\
	-out blastOutput/$1 

exit $?
