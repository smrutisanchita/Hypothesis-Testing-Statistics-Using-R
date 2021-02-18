
####> Introduction to R

######################################################################
# I. Operations
######################################################################

##############################
# a. Basic operations
##############################

### 1. summation, product, exponentiation

1 + 1
2 + 3 * 4
3^2


### 2. Basic mathematical functions are available, also constant "pi"

exp(1)
log(10)
sqrt(10)
pi


##############################
# b. variable, vectors, matrices
##############################

### 1. variable or scalar

x <- 1              # assign the value 1 to x
y = 3               # assign the value 3 to y
z = 4
x*y*z               # compute the product of x, y and z
X*Y*Z               # variable names are case sensitive


### 2. vectors

rep(1,6)            # repeats the number 1, six times
seq(2,5)            # sequence of integers between 2 and 5 (equivalent to 2:6)
seq(4,20,by=4)      # every 4th integer between 4 and 20

x = c(2,0,0,4)      # creates vector with elements 2,0,0,4 
y = c(1,9,9,9)
x + y               # sums elements of x and y
x*y                 # multiplies elements of x and y
sqrt(x)             # function applies to each element

length(x)           # size of vector x
sum(x)              # sum the elements of x
prod(y)             # product of the elements of y

x[1]                # select the 1st elements of x
x[-1]               # remove the 1st elements of x
y[y<9] = 2          # edit the elements of y that are less than 9 by 2


### 3. Matrix

mat = matrix(data=c(9,2,3,4),nrow=2,ncol=2)        # create a matrix with 2 rows and 2 columns
mat
mat[1,2]                                           # select the element in 1st row and 2nd column
mat[2,]                                            # select the elements of the 2nd row
det(mat)                                           # compute the determinant of the matrix


##############################
# c. Functions, Loop, ...
##############################

### 1. Create functions 

square = function(x){ x*x }                         # define your own function 
square(10)                                          # evaluate "square" at 10


### 2. Loop

x = 0
for(i in 1:4){ x = x+i }                            # define a loop
x                                                   # call the new value of x 


### 3. control statement: if(...){...} else{...}

Gender = c("Male","Female","Female","Male")         # create a vector of character
S = rep(0,4)                                        # create a vector of values

for(i in 1:4){ if(Gender[i] == "Male"){ S[i] = 1 }  # Loop and control statement
               else{ S[i] = 2 } } 

S                                                   # call the new value of S



######################################################################
# II. Distributions of Discrete RV
######################################################################

##############################
# a. PMF, CDF, generating RVs
##############################

### 1. Bernoulli

dbinom(1, 1, 0.7)                                   # pmf of Bernoulli(0.7): P[X=1]


### 2. Binomial

dbinom(0, 2, 0.5)                                   # pmf of Binomial(2,0.5: P[X=0]
pbinom(3, 2, 0.5)                                   # CDF of Binomial(2,0.5): P[X <= 3]
rbinom(4, 2, 0.5)                                   # generate a random sample of 4 observations


### 3. Poisson

dpois(7, 3)                                         # pmf of Poisson(3): P[X=7]
ppois(2, 3)                                         # CDF of $\mathrm{Poisson(3): P[X <= 2]
rpois(5, 3)                                         # generate a random samples of 5 observations


##############################
# b. Graphic of Binomial PDF
##############################

x = c(0,1,2)                                        # create a vector x
y = dbinom(x, 2, 0.5)                               # pmf of Binomial(2,0.5) at the values of x

plot(x,y,xlab="values of binomial RV",ylab="PMF")   # Plot the pmf of Binomial(2,0.5)


##############################
# c. Histogram
##############################

x = c(1,1,2,2,2,3,3,3,3,4,4,4,5)                          # create a vector x

hist(x,col="skyblue",xlab="x")                            # plot the histogram of x


######################################################################
# III. Distributions of continuous RV
######################################################################

##############################
# a. PDF, CDF, generating RVs
##############################

### 1. Uniform

dunif(2, 1, 3)                 # pdf of U[1,3]: f(2)
punif(1.5, 1, 3)               # CDF of U[1,3]: P[X <= 1.5]
runif(5, 1, 3)                 # generate a random sample of 5 observations


### 2. Normal

dnorm(1,0,1)                   # pdf of N(0,1): f_n(1)
pnorm(3, 2, 3)                 # CDF of N(2,3^2): P[X <= 3]
qnorm(0.6, 0, 1)               # quantile a that satisfies P[X <= a] = 0.6, for X ~ N(0,1)


### 3. Exponential

dexp(0.5, 2)                   # pdf of Exp(2): f(0.5)
pexp(2, 1)                     # CDF of Exp(1): P[X <= 2]
qexp(0.3, 1)                   # quantile b that satisfies P[X <= b] = 0.3, for X ~ Exp(1)


##############################
# b. Graphic of Normal and Chi-square
##############################

### 1. plot the pdf of N(0,1)

curve(dnorm(x,0,1),col="blue",xlim=c(-3,3),ylim=c(0,0.5),ylab="PDF")


### 2. plot the pdf of Chi-square(4)

curve(dchisq(x, 4),col="green",xlim=c(0,15),ylim=c(0,0.3),ylab="PDF")



######################################################################
# IV. Multivariate distributions
######################################################################

##############################
# a. Sample mean, variance, ..
##############################

# 1. Generate 10 random observations from Gamma(2,1/0.5)

x = rgamma(10, 3, 0.5)


# 2. compute the sample mean, variance, standard-deviation, and median of "x"

mean(x)
var(x)
sd(x)
median(x)


# 3. Compute the sample correlation between "x" and "y"

y = rgamma(10, 2, 0.4)
cor(x,y)


################################
# b. 3D plot of bivariate Normal
################################

# 1. install the package "plot3D" and load this package using "library"

library(plot3D)


# 2. Create a bivariate Normal PDF "f" with correlation parameter "a"

a = 0.9
f = function(x,y){ (1/(2*pi*sqrt(1-a^2)))*exp(-(x^2 - 2*a*x*y + y^2)/(2-2*a^2) ) }


# 3. Create vectors "U" and "V", and evaluate their lengths "m1" and "m2"

U = seq(-3,3,0.1); V = seq(-3,3,0.1); m1 = length(U); m2 = length(V)


# 4. Create a matrix "fun", and assign the values of "f" to "fun"

fun = matrix(0,m1,m2)
for(i in 1:m1){for(j in 1:m2){ fun[i,j] = f(U[i],V[j]) }}


# 5. Draw the 3-dimension plot of "f"

persp3D(U,V,fun,theta=45,phi=30,expand=0.5,ticktype="detailed",col="skyblue",border="darkgrey", zlab="f(x,y)",xlim=c(-3,3),ylim=c(-3,3))  


######################################################################
# V. Linear regression model
######################################################################

# 1. Setting up data: 

# 1.1 Read the data from the file coral-reef.txt

# define a data-set "Data" by reading the file coral-reef.txt"
# Data = read.table("You should add here the address of coral-reef.txt in your computer")
# The address in my computer is C:\\Users\\andro\\OneDrive\\Desktop\\coral-reef.txt
# You should have a different address

Data = read.table("C:\\Users\\andro\\OneDrive\\Desktop\\coral-reef.txt")     
Temp = Data[,1]
Growth = Data[,2]

# 1.2 or, define the data

Temp = c(26.7, 26.6, 26.6, 26.5, 26.3, 26.1)
Growth = c(0.85, 0.85, 0.79, 0.86, 0.89, 0.92)


# 2. "lm": function for estimating the slope and intercept

regression = lm(Growth~Temp)
regression


# 3. draw the scatterplot by "plot" and the regression-line by "abline"

plot(Temp,Growth,col="blue",lwd=4,xlab="Temp",ylab="Growth",xlim=c(25.5,27.3),ylim=c(0.77,0.97))
abline(regression)


# 4. "summary" provide a detailed summary of the regression results

summary(regression)

===============================================================================
  Normal distribution dnorm
dnorm(x, mean, sd)
pnorm(x, mean, sd)
qnorm(p, mean, sd)
rnorm(n, mean, sd) -> generate random number 

Poisson Distribution
If there are 12 cars crossing a bridge per minute on average,
find the probability of having 17 or more cars crossing the bridge 
in a particular minute.

1-ppois(16, lambda=12)
OR
ppois(16, lambda=12, lower=FALSE)   # upper tail


uniform  distribution
dunif(x, min = 0, max = 1, log = FALSE)
punif(q, min = 0, max = 1, lower.tail = TRUE, log.p = FALSE)
qunif(p, min = 0, max = 1, lower.tail = TRUE, log.p = FALSE)
runif(n, min = 0, max = 1)

gamma distribution
dgamma(x_dgamma, shape = 6)  
pgamma(x_pgamma, shape)

chi square distribution
qchisq(.95, df=7) 



