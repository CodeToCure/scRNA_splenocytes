#!/bin/bash -login
#PBS -l nodes=1:ppn=16,walltime=03:00:00:00,mem=32gb
#PBS -j oe

# Variables
sam_name=`echo ${Var} | cut -d'_' -f1`

# working directory:
cd /mnt/research/ADOL/Cheng-Lab-Data/common/scRNA_splenocytes

cellranger count \
--localcores=16 \
--localmem=32 \
--id=${Var} \
--transcriptome=./galgal5 \
--fastqs=./data/raw_fastq \
--sample=${sam_name} \
--expect-cells=3000

qstat -f ${PBS_JOBID}
