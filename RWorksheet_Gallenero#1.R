#Age Vector

age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31,
         27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25,
         17, 37, 42, 53, 41, 51, 35, 24, 33, 41)
age

#1 Age Data points
ageDataPoints <- length (age)
ageDataPoints


#2 Reciprocal Age
reciprocalAge <-1/age
reciprocalAge


#3 Assign also new age <- c(age, 0, age)
new_age <- c(age, 0, age)
new_age

# New age starts by first taking the values from the age vector,
# insert 0 in the middle, and then copying the age vector again


#4 Sort the values for age
sortAge<- sort(age)
sortAge


#5 minimum and maximum age
minimumAge<-min(age)
minimumAge

maximumAge<-max(age)
maximumAge


#Vector Data
data <- c (2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3,
           2.5, 2.3, 2.4, 2.7)
data


#6 Data's Data points
data_DataPoints <- length (data)
data_DataPoints

# the data is doubled


#7 New vector for Data
doubleData <- data * 2
doubleData


#8 Sequence

#8.1 Integers from 1 to 100
seqInt1to100 <- seq(1,100)
seqInt1to100

#8.2 Numbers from 20 to 60
seqNum20to60 <- seq(20,60)
seqNum20to60

#8.3 Mean of numbers from 20 to 60
meanNum20to60 <- mean(20:60)
meanNum20to60

#8.4 Sum of numbers from 51 to 91
seqNum51to91<- seq(51,91)
sumNum51to91 <- sum(seqNum51to91)
sumNum51to91

#8.5 Integers from 1 to 1,000
seqInt1to1000 <- seq(1, 1000)
seqInt1to1000

#8.5 a. Data Points from 8.1 to 8.4

allDataPoints <- length(seqInt1to100) + length(seqNum20to60) +
  length(meanNum20to60) + length(sumNum51to91)
allDataPoints

#8.5 c. find only maximum data points until 10
newseq1_1000 <- c(1:10)
Seq1to1000_dataPoints <- length (newseq1_1000)
Seq1to1000_dataPoints



#9 vector integers between 1 and 100 that are not divisible by 3, 5 and 7

filter_integers1to100 <- Filter(function(i) { all(i %% c(3, 5, 7) != 0) },
                                seq(100))
filter_integers1to100



#10 sequence backwards of the integers from 1 to 100
seq_backward <- (100:1)
seq_backward



#11 natural numbers below 25 that are multiples of 3 or 5
filter_numbers25 <- Filter(function(i) { all(i %% 3 == 0 || i %% 5 == 0) }, seq(24))
filter_numbers25

sum_numbers25 <- sum(filter_numbers25)
sum_numbers25

totalDataPoints <- length(seq_backward) + length(filter_numbers25) + length(sum_numbers25)
totalDataPoints



#12 block
{ x <- 0+ x + 5 + }

# the given code has syntax error
# delete the extra plus sign at the end # to correct this, 
# and R will recognize it # as a valid block of code

#13 Vector named score. Find x[2] and x[3]

score <- c (72, 86, 92, 63, 88, 89, 91, 92, 75, 75, 77)
score
score2 <- score[2]
score2
score3 <- score[3]
score3

#14 vector a

a <- c (1, 2, NA, 4, NA, 6, 7)
a

a[is.na(a)] <- 999
print(a,na.print="-999")

#NA is replaced with 999, and it prints the vector 'a'

#15 name & age
name = readline(prompt="Input your name: ")
age = readline(prompt="Input your age: ")
print(paste("My name is",name, "and I am",age ,"years old."))
print(R.version.string)

# This code prompts the user for their name and age,
# then creates and displays a message which includes their name and age 
# and then printing the R version string
