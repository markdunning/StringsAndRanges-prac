library(TxDb.Hsapiens.UCSC.hg19.knownGene)
library(org.Hs.eg.db)

allGenes <- select(org.Hs.eg.db, keys = keys(org.Hs.eg.db),columns=c("ENTREZID","SYMBOL","CHRLOC","CHRLOCEND"))
chr22ID <- allGenes[which(allGenes[,4]=="22"),]
chr22ID <- chr22ID[chr22ID[,3]>0,]

write.table(chr22ID, file="hg19.chr22Genes.txt",sep="\t")
