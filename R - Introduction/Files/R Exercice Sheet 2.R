##Author: Nurdzane Memeti - D1
#Date: 16.09.2020
##R Exercise Sheet 2

#1)import in R from excel
# a)
# in Excel: open "people.xlsx", save as csv --> "people.csv", ignore and 
# cofirm error messages and warnings.Fehlermeldungen ignorieren
# Start R. Change to the directory you want to work in. Then:

d=read.delim("people.csv",sep=";",dec=".", header=TRUE, row.names=1)
d

# b)check the data
str(d)

#c) Name the rows with ascending numbers, anstatt exp1, exp2
rownames(d)=seq(from=1, to=10, by=1)
d
colnames(d)[2]="SIZE"

#e)sorting:
sorted_positions=order(d$SIZE, decreasing=TRUE)
d_resorted=d[sorted_positions,]
d_resorted

#f)export to excel
write.table(d_resorted, file="people_sorted.txt", sep=";", dec=".", quote = FALSE, row.names = FALSE)

#2)a) Import the file "colors.csv" to R. Convert the data.frame into a matrix (as.matrix). Now the
#entries should not be factors - check this.
e=read.delim("colors.csv",sep=";",dec=".", header=FALSE)
e
str(e)

#from dataframe to matrix convert:
# Transformation to matrix format:
e_matrix=as.matrix(e)
e_matrix
str(e_matrix) # now characters, not factors.

#b)How many different colors are present in the dataset?
color_vector=as.vector((e_matrix))
color_vector
unique(color_vector)
length((unique(color_vector)))

#c) At what position do you find the color "pink"? Try the command "which" in combination
#with "arr.ind=TRUE". What is the difference to "arr.ind=FALSE"?
which(e_matrix=='pink', arr.ind=TRUE)
which(e_matrix=="pink")
which(color_vector=="pink")#considers the matrix a 1-dimensional vector.
# pink appears on the 32 position in this long vector.
#considers the matrix a 1-dimensional vector.

##3. a) Import the dataset "drinks.txt" to R.
f=read.delim("drinks.txt",sep=" ",dec=",", header=TRUE)
f
#b) How many different values do you find with Rivella, how many with Cola?
length( unique(drinks$rivella))
length( unique(drinks$cola) )

#c)Name the first 10 rows "day_1", the others "day_2"
name1=rep("day_1", 10)
name1
name2=rep("day_2", length(f$rivella)-10)
nrow(f)
name=c(name1,name2) #zusammengeführt
name
f$test_day=as.factor(name) #additional column
f

#4. a) Import the dataset "dry_fruits.txt" to R and check for correctness.
fruits=read.delim("dry_fruits.txt",sep=";",dec=".", header=TRUE)
fruits
str(fruits)
nrow(fruits)
#b) change drie to dry in column
colnames(fruits)[1]="dry"
fruits
#c) Add a column with name "dummy", consisting only of values "5".
fruits$dummy = rep(5,length(fruits$dry)) 
fruits
#d) Export the data from c) to "dry_fruits_new.txt".
write.table(fruits, file="dry_fruits_new.txt", sep=";", dec=".", quote = FALSE, row.names = FALSE)

#5) a) Import the dataset "pets.txt" to R and check for correctness.
pet=read.delim("pets.txt",sep=":",dec=",", header=TRUE)
pet
str(pet)
nrow(pet)
#b) How many animals are black? (assess this question with programming)
sum(pet$color=="black")
#c) Add a row with values "brown", 3.2, 5,3 to the end of the data set. What happens if you 
pet[length((pet$color))+1,] = c("brown", 3.2, 5, 3)
pet
