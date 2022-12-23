##Author: nurdzane Memeti
#date: 17.09.20
#topic: descriptive statistics

install.packages("ellipse")
library("ellipse")

#4.1:
data_a=rep(8,10)
data_a
plot(data_a)
data_b=rnorm(mean=8,sd=20,10)
plot(data_b)
abline(h=8,col=2,lwd=2,lty=2)
#4.2:
data = c(1,2,1000)
mean(data)
median(data)
plot(data)
boxplot(data)
salaries=c(rep(90000,1000),1E8)
salaries

mean(salaries)
median(salaries)

#4.3:
x = c(1,2,3,4,5,6,7,8,9,100,1000,10000)
mean(x)
median(x)
sd(x)
var(x)
range(x)
quantile(x,type=3)
boxplot(quantile(x, probs = seq(0,1,0.1), type=3))
#4.4 Find the data file "frogs.csv" and visualize the frog weights combining measures of central tendencies
#and variation.
frogs = read.delim("./Data_4/frogs.csv",sep=";",dec=".",header=TRUE)
frogs

str(frogs)
boxplot(frogs$weight~frogs$species)
#for errors bars
source("error_bars.R")

# we need to create vectors of mean and standard deviation, the "~" does not work
means=tapply(frogs$weight, frogs$species,mean)
means
std=tapply(frogs$weight, frogs$species,sd)
std
b=barplot(means,ylim=c(0,500))
error.bars(b,means,upper=std)

x = rnorm(200,mean=1,sd=3)
y = c (rnorm(200,mean=1,sd=2),rnorm(200,mean=6,sd=1))
z = runif(200)
hist(x)
hist(y)
hist(z)