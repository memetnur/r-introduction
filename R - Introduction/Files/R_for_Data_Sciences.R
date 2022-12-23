##Introduction - Data visualisatoin

#1.Install Packages in R
install.packages("tidyverse")

#2.Load package
library(tidyverse)

#3.other packages
install.packages(c("nycflights13", "gapminder", "Lahman"))

#4. running R code
a=1+2
a
mean(a)

#Generating matrices in R
a = c(1,4,3,6); b=c(10,11,13,14); d=c(20,21,22,23)
matc<-rbind(a,b,d)
matc
matr<-cbind(a,b,d)
matr

mat_d=matrix(c(1,2,3,4,11,12,13,14), nrow=2, ncol=4,byrow=TRUE)
mat_d
mat_empty=matrix(data=NA,nrow=10,ncol=5)
mat_empty

##exercise 1.7
#1)
mat_empty=matrix(data=NA, nrow=20, ncol=5)
mat_empty

#2)
a = c(1,2,3,4); b=c(5,3,2,5); d=c(1,8,7,9)
colum_vec_mat=cbind(a,b,d)
colum_vec_mat
row_vec_mat=rbind(a,b,d)
row_vec_mat

rownames(colum_vec_mat)=c("exp1","exp2","exp3","exp4")
colnames(colum_vec_mat)=c("var1", "var2", "var3")
colum_vec_mat
##exercise 1.8
#1)create 2 vectors 
x=c(1,2,3,4,5,6,7);y=c(10,3,-4,2,7,9,1)
plot(x,y)
#2) plotting symbols style
?plot
plot(x,y,pch=0) #pch=0 are squares
plot(x,y,pch=4) #pch=4 are x

#3) how do you change the colors of the points?, green rectangles
?plot
plot(x, y, pch=2, col="green")
#4) Find out how to put lines between the points:
?plot
plot(x, y, type="l", col="blue")
#5) Change the range of x and y values. create the x-axis between 0 and 10 and y-axis between -10 and 10
?plot
plot(x, y, xlim=c(0,10), ylim=c(-10,10), col="blue")

#6) Title to the figure
?plot
plot(x, y, xlim=c(0,10), ylim=c(-10,10), col="blue", main="R Graphics Basics")

###2. Section: Data import
#1. Data flow: 1. pre-studies(simulated data), 2. planning of test series, 3. experiment and evaluation

#import to R
#1) change working directory
#2) give following code
var_name=read.delim("./Data_2/tab_1.csv"  , sep=";", dec =".", header=TRUE, row.names=1)
#3) validate data:

var_name #show imported data
str(var_name) #show structure of imported data

head(var_name)
#2)Generate an Excel file "my_test.xlsx" to import into R.

