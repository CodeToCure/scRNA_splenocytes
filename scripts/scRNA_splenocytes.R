# Analysis of single cel RNASeq data tutorial from Cambridge
# Resources: 
#http://hemberg-lab.github.io/scRNA.seq.course/index.html
#https://support.10xgenomics.com/single-cell-gene-expression
# https://support.10xgenomics.com/single-cell-gene-expression/software/pipelines/latest/output/matrices
setwd('/Users/Alec/Documents/Bioinformatics/MDV_Project/scRNA_splenocytes')

# Install the cellranger R kit
#source("http://cf.10xgenomics.com/supp/cell-exp/rkit-install-2.0.0.R")
library(cellrangerRkit)
packageVersion("cellrangerRkit")

# Load the genes-barcode matrix
genome <- "galgal5"
gbm <- load_cellranger_matrix("./scRNA_splenocytes", genome=genome)
analysis_results <- load_cellranger_analysis_results("./scRNA_splenocytes")

em <- exprs(gbm) # expression matrix
genes_df <- fData(gbm) # data frame of genes
bc_df <- pData(gbm) # data frame of cell barcodes

tsne_proj <- analysis_results$tsne
visualize_umi_counts(gbm,tsne_proj[c("TSNE.1","TSNE.2")],limits=c(3,4),marker_size=0.05)

