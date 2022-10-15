# 102 Lesson 4 
#   Vectors and Sample Statistics

L4page_2 <- "Creating and Accessing Vectors"

#Sequence function [seq()]
# Argument [by=] means increase sequence by
#   Start, finish, arguments***
sleep_hours3 <- seq(6,12, by=.05)

# Argrument [length.out=] means the vector will have that many elements
sleep_hours4 <- seq(6,12, length.out= 9)


LFM <- "Learn From Mistakes"
sleep_hours3 <- seq(6,12, by=.05, length.out=9)
#Error: Either or situation
#"Too many arguments" [error message]

#VOCAB: 'subsetting' is to cut down large data
#Example
sleep_hours5 <- sleep_hours3[1]
# 6
sleep_hours6 <- "example"
# 6.05

#Quiz Q1 Which of the following commands would create this vector:
#[1] 14 13 12 11 10 9 8
14:8
#Correct
8:14
#check- incorrect

L4page_3 <- "Performing Arithmetic on Vectors"
sleep_hours <- c(7, 4, 8, 9, 5, 11)
sleep_hours2 <- 6:10

#QUESTION: How could we cut the number of hours of sleep in half?
sleep_hours7 <- sleep_hours / 2

#sleep efficiency: Time sleeping in bed vs being in bed
bed_hours <- c(8,9,7,8,10,7,12)
#HELP _ QUESTION: Why is it running "sleep_hours6 <- sleep_hours3[2] after each run?
#Fixed
sleep_efficiency <- sleep_hours / bed_hours * 100
# Example of what happens when the objects are not the same length
sleep_efficiency
# Has values over 100% - This must be inaccurate
#LMS - one vector was longer than the other
sleep_hours
bed_hours

# MORE PRACTICE
print(heights)

#REMEMBER: Investigate warnings - no multipler if not a 1:1 ratio.

#FUNCTIONS ON VECTORS
#EXAMPLE
n = 1:10
#square root of each number
sqrt(n)

#QUIZ 2
#       Q1
#suppose you create the following two vectors:
x <- c(1,9,6,9,5)
y <- c(4,8,2,7,7)
#what would the following command print?
x+y
#Answer: 5, 17, 8, 16, 12
#Check
#(1+4=5), (9+8=17), (2+6=8)

#     Q2
#Can functions be performed on vectors?
# YES - Ex: "sqrt(n)"

L4page_4 <- "Logical Operators and Variables"
#Example
62>67
#FALSE

#Other Examples
62<67
#T
62 <= 67
#T
62 > 67
#F
62 >= 67
#F
62==67
#F
#NOTE: Double equal to communicate non variable. [<- & =]

62 != 67
#What does this mean
#True

L4page_5 <- "Logical Operators on Vectors"
#Logical Opperation to see which elements in sleep_hours vector are less than or equal to 8
sleep_hours>=8
#Prints T/F

#How to create a new vector with only those people who have slept 8 hours or more
enough_sleep <- sleep_hours[sleep_hours>=8]

#  QUIZ #
#          Q1
#Suppose you have two vectors x and y that are defined as follows:
x <- c(1, 2, 3, 4, 5, 6)

y <- c(7, 6, 5, 4, 3, 2)
#What is the value of the following condition?
  
x <= y
#Answer:[1]  TRUE  TRUE  TRUE  TRUE FALSE FALSE

#          Q2
#Suppose that you have a data vector that has been corrupted. Between every valid data value, someone inserted the number 42, sometimes multiple times. Your data vector is
arthur.dent <- c(1, 42, 4, 42, 42, 42, 9, 42, 16, 42, 42)
#Which of the following R expressions will remove the 42's, giving the output:
new.arthur.dent <- arthur.dent[arthur.dent!= 42]
#Answer: [1]  1  4  9 16


L4page_6 <- "Sample Statistics"
view(quakes)
magnitude <- quakes$mag
magnitude

#Measures of Central Tendency
mean(magnitude)
median(magnitude)

#Measures of Dispersion
max(magnitude)
min(magnitude)
sd(magnitude)
var(magnitude)

#ACCURATE
#length = sample size
length(magnitude)
#1,000
sort(magnitude)
#Smallest to largest

summary(magnitude)
#ANSWER: " Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#         4.00    4.30    4.60    4.62    4.90    6.40 "


#MORE PRACTICE
View(faithful)
eruption_times <- faithful$eruptions
max(eruption_times)
min (eruption_times)
length(eruption_times)
sort(eruption_times)
mean(eruption_times)
median(eruption_times)
var(eruption_times)
sd(eruption_times)
summary(eruption_times)

#QUIZ 4
#       Q1
#Create a vector of wait times (times between eruptions) with this statement:
wait.times <- faithful$waiting
#which of the following is the mean of wait time?
mean(wait.times)
#Answer:  70.89706
# CORRECT

#       Q2
# Which of the following is the median wait time?
median(wait.times)
# Answer: 76

#3rd Q
min(wait.times)
#Answer 43

#       Q4
max(wait.times)
#Answer: 96

#       Q5
#Which statement would produce quartiles?
summary(wait.times)