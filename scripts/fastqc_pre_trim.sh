#!/bin/bash -login
#PBS -l nodes=1:ppn=1,walltime=00:03:59:00,mem=8gb
#PBS -j oe

# working directory:
cd /mnt/research/ADOL/Cheng-Lab-Data/common/scRNA_splenocytes

# Load appropriate modules
module load FastQC/0.11.3

fastqc \
-o ./data/fastqc_pre_trim \
./data/${Var}_R2_001_100K.fastq

qstat -f ${PBS_JOBID}
