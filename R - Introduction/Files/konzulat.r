d=read.delim("konzulat.txt",sep=" ",dec=".", header=FALSE)
d

str(d)

new_d=as.vector(d)
new_d

dd=unlist(d,use.names = FALSE)

sort(dd)
length(dd)
hist(unlist(d))
