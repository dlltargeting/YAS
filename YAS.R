dat1 <- read.table("YAS/YAS.txt",header=TRUE,sep="\t")
names(dat1)
dat2 <- read.table("Table_KEGG_ko.txt",header=TRUE,sep="\t")
names(dat2)



library(dplyr)
result<-left_join(dat2,dat1,by="KO")
result<-merge(dat2,dat1,all=TRUE,by.x ="KO")
rownames(result)<-result$KO
result[is.na(result)]<-0
