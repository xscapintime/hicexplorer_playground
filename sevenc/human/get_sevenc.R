rm(list = ls())

setwd(paste0(getwd(), "/sevenc/human"))

## install 7C
BiocManager::install("sevenC")

library(sevenC)


motifs <- motif.hg19.CTCF.chr22

gi <- prepareCisPairs(motifs, maxDist = 10^6)


bigWigFile <- system.file("extdata", "GM12878_Stat1.chr22_1-30000000.bigWig", 
  package = "sevenC")

gi <- addCor(gi, bigWigFile)

