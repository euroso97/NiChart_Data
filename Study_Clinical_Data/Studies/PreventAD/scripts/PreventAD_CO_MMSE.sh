#!/bin/bash

######START OF EMBEDDED SGE COMMANDS ##########################
#$ -l h_vmem=30G
#$ -pe threaded 2
#$ -N sge_PreventAD_CO_MMSE
#$ -j y
#$ -o ./Logs/$JOB_NAME-$JOB_ID.log
############################## END OF DEFAULT EMBEDDED SGE COMMANDS #######################

python ./Scripts/util_DX.py -d MMSE -s PreventAD -p ./Studies/PreventAD/output/PreventAD_CO_MMSE.csv -vt CO
