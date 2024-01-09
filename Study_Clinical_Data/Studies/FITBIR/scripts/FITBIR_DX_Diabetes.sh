#!/bin/bash

######START OF EMBEDDED SGE COMMANDS ##########################
#$ -l h_vmem=30G
#$ -pe threaded 2
#$ -N sge_FITBIR_DX_Diabetes
#$ -j y
#$ -o ./Logs/$JOB_NAME-$JOB_ID.log
############################## END OF DEFAULT EMBEDDED SGE COMMANDS #######################

python ./Scripts/util_DX.py -d Diabetes -s FITBIR -p ./Studies/FITBIR/output/FITBIR_DX_Diabetes.csv -vt DX
