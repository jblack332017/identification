#! /bin/bash

time /fslhome/jblack33/fsl_groups/fslg_RidgeLab/compute/software/blast/ncbi-blast-2.2.31+/bin/makeblastdb \
	-dbtype nucl \
	-in inputFastas$2/$1 \
	-input_type fasta \
	-title $1 \
	-parse_seqids \
	-hash_index \
	-out blastdb$2/Database$2 \
	-max_file_sz 4GB \
	-logfile blastdb$2/makeBlastDB.log

exit $?
