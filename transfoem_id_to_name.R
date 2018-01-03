#!/usr/bin/env Rscript

###arguments
Args=commandArgs()
sense_lendis=read.table(paste(Args[6],".sense.lendis",sep=""),header=T,row.names=NULL)
anti_lendis=read.table(paste(Args[6],".antisense.lendis",sep=""),header=T,row.names=NULL)
pp=read.table(paste(Args[6],".pp",sep=""),header=T,row.names=NULL)
summary=read.table(paste(Args[6],".summary",sep=""),header=T,row.names=1)
rn=row.names(summary)
id_to_name=read.table(Args[7],header=F,row.names=1)

###modify tables
row.names(summary)=id_to_name[row.names(summary),1]
colnames(pp)=id_to_name[colnames(pp),1]
colnames(sense_lendis)=id_to_name[colnames(sense_lendis),1]
colnames(anti_lendis)=id_to_name[colnames(anti_lendis),1]
write.table(summary, paste(Args[6],".summary",sep=""), sep="\t", quote=F)
write.table(pp, paste(Args[6],".pp",sep=""), sep="\t", quote=F, row.names=F)
write.table(sense_lendis, paste(Args[6],".sense.lendis",sep=""), sep="\t", quote=F, row.names=F)
write.table(anti_lendis, paste(Args[6],".anti.lendis",sep=""), sep="\t", quote=F, row.names=F)
