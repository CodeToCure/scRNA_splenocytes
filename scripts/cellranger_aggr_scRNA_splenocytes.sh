#!/bin/bash -login
#PBS -l nodes=1:ppn=1,walltime=01:00:00:00,mem=60gb
#PBS -j oe

# working directory:
cd /mnt/research/ADOL/Cheng-Lab-Data/common/scRNA_splenocytes/galgal5_MDV_cellranger_count

cellranger aggr \
--id=galgal5_MDV_cellranger_aggr \
--csv=./scRNA_splenocytes_libs.csv \
--normalize=mapped

qstat -f ${PBS_JOBID}
