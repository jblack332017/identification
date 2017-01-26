#! /bin/bash
time /fslhome/jblack33/fsl_groups/fslg_RidgeLab/compute/software/blast/ncbi-blast-2.2.31+/bin/makeblastdb \
	-dbtype nucl \
	-in $1 \
	-input_type fasta \
	-title firstOrgansim \
	-parse_seqids \
	-hash_index \
	-out blastdb/firstOrganism \
	max_file_sz 4GB 

exit $?
