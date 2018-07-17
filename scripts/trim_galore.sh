#!/bin/bash -login
#PBS -l nodes=1:ppn=1,walltime=00:03:59:00,mem=8gb
#PBS -j oe

# working directory:
cd /mnt/research/ADOL/Cheng-Lab-Data/common/scRNA_splenocytes

# Load appropriate modules
module load TrimGalore/0.3.3
module load FastQC/0.11.3
module load cutadapt/1.8.1

trim_galore \
--fastqc \
--fastqc_args "--outdir ./data/fastqc_post_trim" \
-o ./data/trimmed \
${Var}

qstat -f ${PBS_JOBID}
