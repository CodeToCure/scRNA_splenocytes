#!/bin/bash -login
#PBS -l nodes=1:ppn=8,walltime=00:03:59:00,mem=40gb
#PBS -j oe

# working directory:
cd /mnt/research/ADOL/Cheng-Lab-Data/common/scRNA_splenocytes

cellranger mkref \
--genome=galgal5 \
--fasta=./data/Gallus_gallus.Gallus_gallus-5.0.dna.toplevel.fa \
--genes=./data/Gallus_gallus.Gallus_gallus-5.0.92.gtf \
--memgb=36 \
--nthreads=8

qstat -f ${PBS_JOBID}
