##Author: Nurdzane Memeti - D1
#Date: 15.09.2020

version

library("tidyverse")
library("ggplot2")
library("reshape2")
library("ggthemes")
library("devtools")
library("ggExtra")
library("psych")
library("gridExtra")
library("mice")
library("missForest")

#2. load built-in data "iris"
#loading
data(iris)
iris

#print the first 6 rows
head(iris)

#Ex1: How many cases (i.e. measurements of flowers) are included in this dataset?
nrow(iris)

#Ex2: How many cases are included in the class "setosa"?
iris_setosa=iris[iris$Species=="setosa",]
iris_setosa
nrow(iris_setosa)
sum(data=='setosa')

##Ex 3: Order the flowers decreasingly according to the variable 'Sepal.Length'. Output the
#corresponding values for variable 'Sepal.Width'(i.e. sorted according to 'Sepal.Length')
iris
orderd_flowers=order(iris$Sepal.Length, decreasing = TRUE)
or=iris[orderd_flowers,]
or
or$Sepal.Width


#ex4:

g=function(a,b){
  m=mean(iris$Sepal.Length)
  ab=iris$Sepal.Length[iris$Sepal.Length>a&iris$Sepal.Length<b]
  mm=mean(ab)
  return(m-mm)
}

g(4,5)

data(iris)
iris
nrow(iris)

sum(iris=="setosa")
o=order(iris$Sepal.Length, decreasing = TRUE)
o
orded=iris[o,2]
orded
orded$Sepal.Width

data("mtcars")
mtcars

mean(mtcars$qsec)

c=mtcars$cyl[mtcars$cyl<8]
length(c)

mtcars

ordered_mtcars=order(mtcars$mpg, decreasing = TRUE)
car_names=mtcars[ordered_mtcars,]
car_names
car_names2 = car_names[,-1]
car_names2
rownames(car_names2) = car_names[,]
position_sorted=order(mtcars$mpg, decreasing=TRUE)
sorted_data=mtcars[position_sorted,]
sorted_data

str(car_names)
plot(mtcars$hp, mtcars$wt)

fun=function(a,b){
  ab=mtcars$wt[mtcars$wt<a&mtcars$wt<b]
  per_ab=100*ab[1,]/all
  return(per_ab)
}



fun(2,3)
