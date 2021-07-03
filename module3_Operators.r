# Problem 1: Perform all the arithmetic operations (Addition, Subtraction, Multiplication, Division, Exponent, Modulus, Integer Division) on the given vectors:
#a = c(8.2, 3, 6, 1.4), b = c(2, 4, 8, 6)
  
a = c(8.2,3,6,1.4)
b = c(2,4,8,6)
print(a+b)
print(a-b)
print(a/b)
(a**b)
(a%%b)
a%/%b

# Problem 2: Prove associative law (which means that rearranging the parentheses in an expression will not change the result) for addition and multiplication using the given vectors. Find the LHS (Left Hand side) and RHS (Right Hand Side) and then compare both using relational operators to prove the law.
#a = c(8.2, 3, 6, 1.4), b = c(2, 4, 8, 6), c = c(1, 2.2, 2.6, 5)

a = c(8.2,3,6,1.4) #For addition
b = c(2,4,8,6)
c = c(1,2.2,2.6,5)
Lhs = a+(b+c)
print(Lhs)
Rhs = (a+b)+c
print(Rhs)
Lhs == Rhs

Lhs = a*(b*c) #For multiplication
print(Lhs)
Rhs = (a*b)*c
print(Rhs)
Lhs == Rhs

# Problem 3: Create a 2x4 matrix and find the result of multiplication of the matrix with its transpose using an appropriate in-built method.

matrix_1 <- matrix(c(1,2,3,4,5,6,7,8),nrow = 2,ncol = 4,byrow = TRUE)
print(matrix_1)
trans <- t(matrix_1)
print(trans)
print(matrix_1%*%trans)

# Problem 4: Convert the given vector into a data frame using an appropriate function then convert the same into a matrix.
#a<-  c(1,2,3) ; b<- (10,20,30) ; c<- (100,200,300); d <- (1000,2000,3000)

df1 <- data.frame(c(1,2,3,10,20,30,100,200,300,1000,2000,3000))
print(df1)
matrix_1 <- matrix(c(1,2,3,10,20,30,100,200,300,1000,2000,3000),nrow = 4,ncol = 4,byrow = TRUE)
print(matrix_1)

# Problem 5: Given is the information of creating a data frame. What would be the resultant of doing "C.df%*%B"
# > C.df <- data.frame(a,b,c,d)
# > C.df
# a  b   c    d
# 1 1 10 100 1000
# 2 2 20 200 2000
# 3 3 30 300 3000 
# > 'Given is the output of B:' 
# B
# [,1] [,2] [,3]
# a    1    2    3
# b   10   20   30
# c  100  200  300

C.df <- data.frame(1,10,100,1000,2,20,200,2000,3,30,300,3000)
B <- data.frame(1,2,3,10,20,30,100,200,300)
print(C.df%*%B)

                






