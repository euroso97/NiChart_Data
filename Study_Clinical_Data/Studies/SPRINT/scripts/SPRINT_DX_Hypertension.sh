#!/bin/bash

######START OF EMBEDDED SGE COMMANDS ##########################
#$ -l h_vmem=30G
#$ -pe threaded 2
#$ -N sge_SPRINT_DX_Hypertension
#$ -j y
#$ -o ./Logs/$JOB_NAME-$JOB_ID.log
############################## END OF DEFAULT EMBEDDED SGE COMMANDS #######################

python ./Scripts/util_DX.py -d Hypertension -s SPRINT -p ./Studies/SPRINT/output/SPRINT_DX_Hypertension.csv -vt DX
