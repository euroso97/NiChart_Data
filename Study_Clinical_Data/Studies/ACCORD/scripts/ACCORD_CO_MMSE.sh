#!/bin/bash

######START OF EMBEDDED SGE COMMANDS ##########################
#$ -l h_vmem=30G
#$ -pe threaded 2
#$ -N sge_ACCORD_CO_MMSE
#$ -j y
#$ -o ./Logs/$JOB_NAME-$JOB_ID.log
############################## END OF DEFAULT EMBEDDED SGE COMMANDS #######################

python ./Scripts/util_DX.py -d MMSE -s ACCORD -p ./Studies/ACCORD/output/ACCORD_CO_MMSE.csv -vt CO
