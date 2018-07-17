# Single-cell Sequencing in *Gallus gallus* Splenocytes Infected with Marek's Disease Virus (MDV)

We collected splenocytes from spleens of line 6 and line 7 birds infected at hatch with 2000 pfu of MDV (strain JM102W) at 6 days of age. Splenocytes were seperated via Histopaque-1077 and underwent single cell RNA sequencing (100bp paired-end reads) via Illumina NextSeq (10X Chromium 3-prime library kit) at the Van Andel Institute Genomics Core. FASTQ files were prepared with the 10X Single cell cellranger mkfastq software. We recieved data on April 14, 2018. Project designed and implemented by the Hans Cheng Lab (Hans.Cheng@ars.usda.gov). Sequencing performed under the supervision of Marie Adams (marie.adams@vai.org).

## Sequencing Files

All raw FASTQ sequences are in `outs/fastq_path`

		$ find outs/fastq_path -name "*.fastq.gz"
		outs/fastq_path/61C_S7_L001_I1_001.fastq.gz
		outs/fastq_path/61C_S7_L001_R1_001.fastq.gz
		outs/fastq_path/61C_S7_L001_R2_001.fastq.gz
		outs/fastq_path/61C_S7_L001_R2_001.fastq.gz

## File Nomenclature

Samplesheet path: `outs/input_samplesheet.csv`

`63C_S9_L002_R1_001.fastq.gz`  
`LineBirdnumberInfected_Samplenumber_Lane_Read_additionalID.fastq.gz`  

`6`: Bird line (e.g. Line 6)  
`3`: Bird number (e.g. Bird 3)  
`C`: Whether a bird was infected or control (e.g. Control)  
`S9`: Sample number (e.g. Sample 9)  
`L002`: Lane (e.g. Lane 2)  
`R1`: Read (e.g. Read 1)  

Files labeled as "Undetermined" were not properly binned to appropriate samples

## Quality Control

"Overall, the sequencing data looks very good from a technical perspective; each library has between 150-200M reads that passed QC, with 90% of the bases having quality scores of 30 or better." ~Van Andel Institute Genomics Core
  
FastQC reports: `outs/fastq_path/FastQC`  
Multiqc_data: `outs/fastq_path/multiqc_data`  

## Data Integrity

MD5 file path: `outs/fastq_path/CHEH_20180306_10XscRNA.md5`

To perform an MD5 check, in directory `outs/fastq_path/`

		$ md5sum -c CHEH_20180306_10XscRNA.md5
		61C_S7_L001_I1_001.fastq.gz: OK
		61C_S7_L001_R1_001.fastq.gz: OK
		61C_S7_L001_R2_001.fastq.gz: OK
		61C_S7_L002_I1_001.fastq.gz: OK

