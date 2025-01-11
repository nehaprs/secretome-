#clean the latest data
library(dplyr)
library(readr)
library(readxl)
library(writexl)
library(openxlsx)
library(readxl)
library(tidyr)



secretome <- read_excel("~/BINF/BINF_old/multi-omics/ADAM9 KD HCT116 proteomics/secretomics/perseus output/secretome_results.xlsx")
secretomeSig = secretome[secretome$FDR < 0.05 ,]
setwd("~/BINF/standalone ADAM9/secretome")
write_xlsx(secretomeSig, "secretoemSig.xlsx")
secretomeDE = secretomeSig[abs(secretomeSig$log2FC) > log2(1.5),]
write_xlsx(secretomeDE, "secretomeDE.xlsx")
