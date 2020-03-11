#!/bin/bash
#
#$ -S /bin/bash
#$ -cwd
#$ -V
#$ -l h_vmem=16G

## Gene set analysis

export R_LIBS_USER=~/R/library

mkdir -p $R_LIBS_USER

Rscript TWAS-GSEA.V1.2.R \
    --twas_results /home/c.c0808508/TWAS/PsychENCODE.allChr.txt \
    --pos /neurocluster/databank/FUSION/WEIGHTS/PsychENCODE/PsychENCODE.pos \
    --expression_ref /home/c.c0808508/TWAS/FeaturePred_output/FeaturePredictions.csv \
    --gmt_file /home/c.c0808508/TWAS/TWAS-GSEA/genesets/GO_human_strictEC_10-2000_2020-01-13_TWAS.txt \
    --output GO_human_strictEC_10-2000_2020-01-13 \
    --p_cor_method fdr
