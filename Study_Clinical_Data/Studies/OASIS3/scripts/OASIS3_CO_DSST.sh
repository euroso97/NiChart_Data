#!/bin/bash

######START OF EMBEDDED SGE COMMANDS ##########################
#$ -l h_vmem=30G
#$ -pe threaded 2
#$ -N sge_OASIS3_CO_DSST
#$ -j y
#$ -o ./Logs/$JOB_NAME-$JOB_ID.log
############################## END OF DEFAULT EMBEDDED SGE COMMANDS #######################

python ./Scripts/util_DX.py -d DSST -s OASIS3 -p ./Studies/OASIS3/output/OASIS3_CO_DSST.csv -vt CO