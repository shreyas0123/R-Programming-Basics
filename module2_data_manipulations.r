# Problem 1: Import the given dataset and check for 'NA' values in it using the appropriate function. Now follow the given steps to manipulate your data:
#   Note: - Use Data Manipulation Dataset.
# a)	Create a new data frame using the given data frame (i.e. the given dataset) by removing the 'NA' values.
# b)	Consider the given dataset to replace the first NA value in the dataset with your name in that place.
# c)	Find the factor of each column in the dataset
# d)	Find the class of each column in the dataset
# e)	Find the structure and summary of the dataset.
install.packages("readr")
library(readr)
df1 <- read.csv("C:\\Users\\DELL\\Downloads\\R- Programming\\Data_Manipulation.csv")
na.omit(df1) #To remove the null values         
sum(is.na(df1))

NAindex <- which(is.na(df1),arr.ind = T) #replacing first NA value with "Shreyas"
frow <- NAindex[1,1]
fcol <- NAindex[1,2]
df1[frow,fcol] <- "Shreyas"

df1$experience <- as.factor(df1$experience) #finding factor of each column
df1$scores <- as.factor(df1$scores)
df1$gender <- as.factor(df1$gender)
df1$admission <- as.factor(df1$admission)
class(df1$experience)
class(df1$scores)
class(df1$gender)
class(df1$admission)
str(df1)
summary(df1)

# Problem 2: Use R to create the following two matrices and do the indicated matrix multiplication.      
matrix_1 <- matrix(c(7,9,12,2,4,13),nrow = 2,ncol = 3,byrow = T)
matrix_2 <- matrix(c(1,7,9,12,2,8,13,20,3,9,14,21),nrow = 3,ncol = 4,byrow = T)
print(matrix_1 %*% matrix_2)

# Problem 3: Use R to create the following two matrices and multiply each value to its successive position.       
matrix_1 <- matrix(c(1,2,3,4,5,6,7,8,9),nrow = 3,ncol = 3,byrow = T)
matrix_2 <- matrix(c(1,4,7,2,5,8,3,6,9),nrow = 3,ncol = 3,byrow = T)
print(matrix_1*matrix_2)
