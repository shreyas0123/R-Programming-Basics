#Problem 1: Divide 743 by 2 and obtain the result such that the output gives us a value without the decimal point.
743%/%2 #integer division

#Problem 2: Print a 3*4 array of three dimensions, which has the input of vectors sequencing from 13554:13590 and index the second row and third column element of third dimension of the array.
j <- array(c(13554:13590) ,dim  = c(3,4,3))
print(j)
j[2,3,3]

#Problem 3:  What is the command to install a package in R and how do you invoke it?
install.packages("packageName")
library(packageName)
#Eg:
install.packages("readr")  
library(readr)

#Problem 4: Create an if statement that prints the name of the team that won.
#Where Team A scored 678 (out of 700), Team B scored 666 (out of 700).
team_a <- 678
team_b <- 666
if(team_a > team_b)print("team_a");if(team_a < team_b)print("team_b");if(team_a == team_b)print("team_a and team_b");

# Problem 5: Check whether the given number is positive and divisible by 5 or not using conditional statements. (Hint: Use both if and else statements) 
# Given number: 468
num <- as.numeric(readline("enter a number :"))
if(num> 0){
  print("num is positive")
  if(num %% 5 == 0){
    print("num is divible by 5")
}else {
  print("num is not divisible by 5")
}
 } else{
print("num is negative")
if(num %% 5 == 0){
print("num is divisible by 5")
} else{
    print("num is not divisible by 5")
  }
 }

# Problem 6: Given is a formula of Normalization.
# 
# 
# 
# Create a user defined function 'z' such that you define the given formula within it. 
# Where, using max(x) and min(x) in R gives you the minimum and maximum value of x.
z <- function(x){
  a = ((x-min(x))/(max(x)-min(x)))
  return(a)
}
  
# Problem 7: If 'a' is the given vector. What is the output when you apply the user defined Normalizing function 'z ()' to it? [Hint: This question is the continuation of Problem 6]
# a<-c(33,434,242,434354,545,54,56,56,4534,5342,24,5,65,65,767,8,78,79,79,64,635,3,4,35,57,678,5,86,86,457,546,34,345,34,3,4,65,6,57, ,347) 

z <- function(x){
  a = ((x-min(x))/(max(x)-min(x)))
  return(a)
} 
x<-c(33,434,242,434354,545,54,56,56,4534,5342,24,5,65,65,767,8,78,79,79,64,635,3,4,35,57,678,5,86,86,457,546,34,345,34,3,4,65,6,57,347) 
z(x)

#Problem 8: Achieve a Boxplot, Histogram and scatter plot on a given data 'Q1'. Use any column/columns to get the respective outputs.
install.packages("ggplot2")
library(ggplot2)
install.packages("readr")
library(readr)
df1 <- read.csv("C:\\Users\\DELL\\Downloads\\R- Programming\\Q1.csv")
box1 <- boxplot(df1$datasrno) # boxplot           
box2 <- boxplot(df1$workex)
box3 <- boxplot(df1$gmat)

his1 <- hist(df1$datasrno) #histogram
his2 <- hist(df1$workex)
hist3 <- hist(df1$gmat)

sr1 <- ggplot(df1, aes(datasrno, workex,color = gmat)) + geom_point()
sr1

sr2 <- qplot(datasrno, gmat, data = df1, color = workex, geom = "point")
sr2


