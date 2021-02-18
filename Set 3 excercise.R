pval <- NULL #run several t-tests
for (i in 1:10000){
  x <- rnorm(10,mean=185,sd=10)
  y <- rnorm(10,mean=177,sd=10)
  z =  (mean(x) - mean(y))/sqrt(20)
  pval <- c(pval, 1 -  pnorm(z))
}
table(pval<0.05)

- power of test 
----------------------------------------------------------------------
  
#Set 3 
##########################
#Question 1
#A sample of 68 observations from population I was taken, with sample mean 
#26.99 and standard deviation 4.89. Another sample of 74 observations from
#population II was taken, with sample mean 35.76 and sample standard deviation 6.43.
#Test whether there is any difference between the two population variances,
#under significance level 0.05

mu1=26.99
s1=4.89
n1=68

mu2=35.76
s2=6.43
n2=74

alpha=0.05

#F test
#Ho: s1=s1
#H1: s1!=S2
F=(s1^2)/(s2^2)
#f(0.025,67,73)

qf(alpha/2,n1-1,n2-1)   # lower limit 0.6217439
qf(1-alpha/2,n1-1,n2-1) # upper limit 1.600606

#CR for F (-Inf,-0.62] U [1.60,Inf)

The test statistic F is 0.578, which lies within CR 
Thus we should reject Ho

##################################################################
#Question 2
A sample of 10 observations from population I was taken, with sample mean
80.95 and standard deviation 9.59. Another sample of 10 observations from
population II was taken, with sample mean 63.23 and sample standard deviation 5.96.
Test whether the first population has larger variance than the second one,
under significance level 0.05?

mu1=80.95
s1=9.59
n1=10

mu2=63.23
s2=5.96
n2=10

alpha=0.05

#F test
#Ho: s1=s1
#H1: s1>S2  one taied test
F=(s1^2)/(s2^2)  # 2.58
#f(0.025,67,73)


qf(1-alpha,n1-1,n2-1) # upper limit 3.178893

#CR for F  [3.179,Inf)

as F doesnt lie within CR , we will NOT reject Ho 

################################################################################
#Question 3
An experiment was carried out to study the stopping distance
at 50mph for two types of cars. Stopping distance samples of the two type
of cars were recorded. 

A data set with n1 = 10 samples was collected for the first type of cars. The
sample mean is x¯1 = 42 and sample variance is s1square = 5.3.

Another dataset with n2 = 8 samples was collected for the second type of
cars. The sample mean is x¯2 = 67 and sample variance is s2square= 5.6.

a Choose a suitable hypothesis test method to test, at significance level
0.1, H0 : ??21 = ??22 against H1 : ??21 != ??22, where ??21 and ??22 are the
population variances for the stopping distances of the two types of
cars

x_bar1=42
s1square=5.3
n1=10

x_bar2=67
s2square=5.6
n2=8

alpha=0.1  
#Ho: s1square=s2square
#Hi: s1square!=s2square

F=(s1square)/(s2square)  # 0.94


qf(alpha/2,n1-1,n2-1)   # lower limit 0.3036979
qf(1-alpha/2,n1-1,n2-1) # upper limit 3.676675

#CR for F (-Inf,0.3036979] U [3.676675,Inf)

as F doesnt lies within CR , we will not reject Ho

# Part b 
Based on the result in the previous question, choose a suitable hypothesis test method to test
at significance level 0.05, H0 : µ1 = µ2
against H1 : µ1 < µ2, where µ1 and µ2 are the population means for
the stopping distances of the two types of cars.

#H0 : µ1 = µ2
#H1 : µ1 < µ2  # one sided test

alpha=0.05
SPsquare = ( (n1-1)*s1square+(n2-1)*s2square )/(n1+n2-2)
T = (x_bar1 - x_bar2)/sqrt(SPsquare*(1/n1+1/n2))  #-22.6

qt(alpha,n1+n2-2)  #-1.745884

CR for T is (-inf,-1.745884]

as T lies within CR , we reject Ho


#########################################################################
#Question 4
A manufacturer of sprinkler systems used for fire protection in office buildings
wants to estimate the average system-activation temperature, µ. A sample of n = 9 systems,
when tested, yields a sample average activation temperature of 131.08 degrees. 
We assume that the distribution of activation times is normal with 
standard deviation 1.5 degrees.What is the 99% confidence interval for µ?
  
n=9
x_bar=131.08
sigma=1.5
alpha=0.01
z1=qnorm(1-alpha/2)

#CI 
c1=x_bar-(z1*sigma/sqrt(n))  #129.79
c2=x_bar+(z1*sigma/sqrt(n))  #132.36

CI [129.79,132.36]

