#!/bin/bash -login
#PBS -l nodes=1:ppn=1,walltime=03:00:00:00,mem=30gb
#PBS -j oe

# Variables
sam_name=`echo ${Var} | cut -d'_' -f1`

# working directory:
cd /mnt/research/ADOL/Cheng-Lab-Data/common/scRNA_splenocytes/galgal5_MDV_cellranger_count

cellranger count \
--localcores=1 \
--localmem=30 \
--id=${Var} \
--transcriptome=../galgal5_and_gallid_herpesvirus_2 \
--fastqs=../data/raw_fastq \
--sample=${sam_name} \
--expect-cells=3000

qstat -f ${PBS_JOBID}
