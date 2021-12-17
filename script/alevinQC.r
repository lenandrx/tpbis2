library(alevinQC)

if (!requireNamespace("alevinQC", quietly = TRUE))
{
  install.packages("httpuv")
  if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
  BiocManager::install("alevinQC")
}
setwd("/home/rstudio/mydatalocal/tpngsscarabi_lena")
alevin.path <- "results/results_alevin_"
QCreport.path <- "results/alevinQC_report"
samples <- c("mutant", "wt")
for(sample in samples)
{
  alevinQCReport(baseDir = paste0(alevin.path, sample),
                 sampleId = sample,
                 outputFile = paste0(QCreport.path, "/",sample,"_alevinReport.html"),
                 outputFormat = "html_document",
                 forceOverwrite = TRUE)
}

