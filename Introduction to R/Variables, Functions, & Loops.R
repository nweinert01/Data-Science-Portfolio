# Learning Variables

#Naming Variables includes:
#A - Z
#0 - 9
#periods
#underscores

#Example:
valid_variable_name <- 721
valid.variable.name = 720
719 -> ValidVariableName

valid_variable_name
valid.variable.name
ValidVariableName

#first assignment statement
x <- 3

#Strings and Variables
Bison <- "can run up to 30 mph"
Bison
print("Bison")
#no quotes in print
#attempt 2
print(Bison)

#Combining Strings Example
Bison2 <- "and can also throw people 20 ft in the air"
Bison2

#Print versus Paste Example
print(Bison)
print(Bison2)
paste(Bison,Bison2)

#Practice
"Hello World!"
h <- "Hello World!"
print(h)
f = "Hello"
g <- "World!"
paste(f,g)

#Arithmetic in R
#Practice
2+1
Two = 2
One = 1
Two + One
Two - One
Two * One
Two / One
Two ^ One
# GOT IT

# More Practice
x <- 4
y <- 7
x + y

# Example Computing a Z-Score
x <- 169.0
mu <- 159.0
sigma <- 4.9
(x - mu) / sigma
#   ACCURATE

#Review
# Question 1
#A=pi(r)^2
r <- 2.54
pi*r^2
#A=20.2683
#   ACCurATE

# Question 2
#simple variance is stdev squared
stdev <- 0.834
stdev^2
#A = .695556
#   ACCURATE 

# Question 3
# Z-score = (x - mu) / sigma
x2 <- 154.8
(x2 - mu) / sigma
#NOTE: z - score can be negative

# Percentiles based on z score
z_score <- 2.2
pnorm(z_score)
#A = 99th percentile (.986)
#   ACCURATE

#Practice 2 z-score, percentile
x3 = 472
mu2 = 440
sigma2 = 23
z2 <- (x3 - mu2) / sigma2
print(z2)
#Z Score = 1.3913
pnorm(z2) * 100
#Percentile = 92nd Percentile
#Explain = 472 is greater than 91.79% of the scores

#Compute the area under the standard normal density to the right of 1.39
pnorm(z2,lower.tail = FALSE)

#Pnorm can even save you the effort of computing the zscore
#Example
pnorm(472, mean=440, sd=23)
#Upper tail area
pnorm(472, mean=440, sd=23, lower.tail = FALSE)

#Function Quiz Q3
#Var = sqrt^2 
#Find stdev when var = 6.28
sqrt(6.28)
#   ACCURATE

#Creating your own Functions
TspToTbsp <- function(TsTb){
  (TsTb / 3)
}
TspToTbsp(9)

#Function to Convert temp f to c
f_to_c <- function(TF){
  (TF - 32) * 5 / 9
}
temp_in_c <- f_to_c (73)
temp_in_c
#   ACCURATE

#For Loop Practice
Tsp <- c(1,5,2,11,12)
for(number in Tsp){
  Tbsp <- TspToTbsp(number)
  cat(number, "Tsp is", Tbsp, "Tbsp", "\n")
}
#Forward Slash n "\n"
Tbsp <- TspToTbsp(number)
# NOT SEEING RESULTS

#New Example of For Loop
for (n in 1:6){
  print(n)
  print(n^2)
}
#Not working = brain break
#NOT A CODING ERROR
#Session - Restart R = successful
#No + in R Console






