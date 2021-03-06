library(Matrix)
library(igraph)
rm(list = ls())

el=read.csv(file.choose()) #"wi_cardi_referrals.csv", "wi_cardi_im_referrals.csv"
el[,1]=as.character(el[,1])
el[,2]=as.character(el[,2])
el=as.matrix(el)
g=graph.edgelist(el[,1:2], directed = TRUE)
E(g)$weight=as.numeric(el[,3])
