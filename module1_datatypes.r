# Problem 1: Use R  to compute the following values.
# (a)	27(38-17)
# (b)	(147¬) * (39) 
# (c)	  
# (d)	54%3
# (e)	54/3
# (f)	Find cube of 999
27*(38-17)
(14^7)*(39)
sqrt(436/12)
54%%3
54/3
999^3

# Problem 2: Construct 2 lists containing mentioned data types  (Numeric, Character, Complex, Logical, Vector) and do the following.
# a.	Create another list which has a vector as an input inside it.
# b.	Find the length and class of the above created list.
lst_1 <- list(20,"shreyas",2+3i,2>3,20)
lst_2 <- list(200,"shreyansh",25+4i,25>35,200)
lst_3 = list(200)
length(lst_1)
length(lst_2)
length(lst_3)
class(lst_1)
class(lst_1)
class(lst_2)
class(lst_3)

# Problem 3: Create a list of two vectors containing integers (numbers from 1 to 10 in one and 5 to 15 in other) 
# .	Index the 8th element of the first list and 8th element of second list
# .	Unlist the second back to atomic vectors
# .	Subset the new list from 6th element to 14th element
lst_4 <- list(1:10,5:15)
lst_4[[1]][8]
lst_4[[2]][8]
uls <- unlist(lst_4[[2]])
sub <- list(lst_4[[1]][6:10],lst_4[[1]][1:4])

# Problem 4: Create a list of 5 states having state name as variable name and number of covid-19 cases as its values.
# A.	Access a few values through its variable name use $ to do so.
# B.	Find the class and length of the list
# C.	Subset the third state and its value.
states <- list(karnataka = 2000,kerala = 3000,delhi = 4000,tamilnadu = 5000,andrapradesh = 60000)
states$karnataka
states$kerala
class(states)
length(states)
states[3]