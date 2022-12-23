##############################################################################
## Task 1 ##
##############################################################################
x = c(1,2,3,2,3,4,1,5,4,3,4,5,6,2,3,4,5,6,1000000,1000000,100)
str(x)

mean(x) #huge
median(x) # small

sd(x) # huge
range(x) # huge

quantile(x,probs=seq(0,1,0.25),type=3)
quantile(x,probs=seq(0,1,0.1),type=3)

hist(x)

##############################################################################
## Task 2 ##
##############################################################################
tomatoes = read.delim("../Files/tomatoes.csv",sep=";",dec=".",header=TRUE)
str(tomatoes)


#a)) What is the average weight of the tomatoes separated in colors?
tapply(tomatoes$weight,tomatoes$color,mean)
tomatoes$weight
tomatoes$color
?tapply
#b)What is the standard deviation of the diameters separated in water levels?
tapply(tomatoes$diameter,tomatoes$water,sd)

#c)What is the average weight separated in terms of colors and water levels? Use ftable to
# the NA.
tomatoes$weight
tomatoes$water
tomatoes$color
tapply(tomatoes$weight, list(tomatoes$water, tomatoes$color), mean)
ftable(tomatoes$water,tomatoes$color) # no occurencies in certain combinations...

#d)Change the factors in the dataset to numbers (careful: ordinal values may need setting of
#levels, see chapters 1 or 3). Where do you find correlations in this data set?
str(tomatoes)
t_new = tomatoes
t_new

t_new$fertilizer # needs releveling.
t_new$fertilizer = factor(tomatoes$fertilizer,levels=c("low","middle","high"))
t_new$fertilizer = as.numeric(t_new$fertilizer)
t_new

t_new$water # leveling ok.
t_new$water = factor(tomatoes$water,levels=c("dry","humid","wet"))
t_new$water = as.numeric(t_new$water)

str(t_new)
str(t_new)

correlations = cor(t_new,method="spearman")
correlations

library(ellipse)
plotcorr(correlations)
 # diameter and weight seem to be clearly correlated...

#e)Are weight and diameter linearly correlated?

plot(tomatoes$diameter,tomatoes$weight)
regr = lm(tomatoes$weight~tomatoes$diameter) # careful order!!
regr # intercept -116.68, diameter 62.77
# careful: negative diameters (intercept) are not reasonable --> model limitations.
abline(regr,col=2,lwd=2)
cor(tomatoes$diameter,tomatoes$weight,method="pearson") 
#high correlation, good quality of regression line.


################################################################
## Task 3 ##
##############################################################################
data = read.delim("../Data_4/experiment.csv",sep=";",dec=".",header=TRUE)
str(data)

boxplot(data$measured~data$point)
title("measurements of experiment")

# make sure that the error_bars.R script is in the current working directory:
source("error_bars.R") 

means = tapply(data$measured,data$point,mean)
std = tapply(data$measured,data$point,sd)

b = barplot(means,ylim=c(0,20))
error.bars(b,means,upper=std)
title("measurements with error bars of +/- 1 sd")

# in scatterplot
x = seq(1,9)
x
plot(x,means,ylim=c(0,20))
title("measurements with error bars of +/- 1 sd")
error.bars(x,means,upper=std) 

##############################################################################
## Task 4 ##
##############################################################################
people = read.delim("../Data_4/even_more_people.csv",sep=";",dec=".",header=TRUE)
str(people)

# a)
p_rel = people[people$year<1995,]
str(p_rel)

# b)
xtabs(~p_rel$year)
barplot(xtabs(~p_rel$year))

100*prop.table( tabs(~p_rel$year))
barplot(100*prop.table(xtabs(~p_rel$year)))

# c)
xtabs(~people$year + people$nationality)
barplot(xtabs(~people$year + people$nationality),legend.text=TRUE) # wrong way round...

xtabs(~people$nationality + people$year)
barplot(xtabs(~people$nationality + people$year),legend.text=TRUE) # wrong way round...
?barplot

# d) 
prop.table(xtabs(~people$nationality + people$year),margin=2)
barplot(prop.table(xtabs(~people$nationality + people$year),margin=2),legend.text=TRUE)





