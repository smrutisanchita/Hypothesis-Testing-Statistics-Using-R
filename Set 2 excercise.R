


#Set 2 
##########################
#Question 1

#ho: u=130
#h1: u!=130

n=9
mu0=130
x_bar=131.08
s=1.45
alpha=0.01

t=(x_bar-mu0)/(s/sqrt(n))  #2.23
qt(alpha/2,8) # -3.55
#CR for T is (-inf,-3.55] U [3.55,inf) 
# as T is not in CR , we will NOT reject Ho

# or P(|T|>2.23)=0.056
2*pt(-2.234,8)  #0.05594675

# as this is bigger than alpha , we will not reject Ho

######################################################

#Question 2
#ho: u=75
#h1: u<75

n=25
mu0=75
x_bar=72.3
s=9.1
alpha=0.05

t=(x_bar-mu0)/(s/sqrt(n))  # -1.48
#one tail test
qt(alpha,24) #-1.710882
# CR for t (-inf,-1.710882]
# As T doesnt lie within CR , we will NOT Reject Ho

pt(-1.48,24) #0.07594081
#as p-value is more than alpha , we will not reject Ho

#part b
alpha=0.1
mu1=71

cp=qt(alpha,24)  #1.28
#P(T>-1.28|u=71) 
type_2_error=1-pt(cp-(mu1-mu0)/(s/sqrt(n)),24) # 0.1938

# question 3
#ho: u=750
#h1:u<750 

mu0=750
s=37
n=50
x_bar=738.44
alpha=0.05

t=(x_bar-mu0)/(s/sqrt(n)) # -2.20923
qt(alpha,49)  # -1.676551
# CR for T is (-inf,-1.676551]

# as z lies within CR , we Reject Ho
# Thus average life time is less than 750hrs, do not buy them 
==========================================================================
  
  # 2 sample F test
  
  x1 <- c(102.3,102.1,102.0,102.3,102.5,102.2)
x2 <- c(101.6,101.7,101.9,102.7,101.9,101.4)
var.test(x1,x2)

######################################################

#data:  x1 and x2
#F = 0.15132, num df = 5, denom df = 5, p-value = 0.05871
#alternative hypothesis: true ratio of variances is not equal to 1
#95 percent confidence interval:
#  0.02117376 1.08136041
#sample estimates:
#  ratio of variances 
#0.1513158 

########################################################

t.test(x1,x2,alternative = "two.sided",var.equal = TRUE,mu=0,conf.level = 0.95)

#output
Two Sample t-test

data:  x1 and x2
t = 1.8593, df = 10, p-value = 0.09262
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
  -0.07272824  0.80606157
sample estimates:
  mean of x mean of y 
102.2333  101.8667 


#################################################
Power of test 
pval <- NULL #run several t-tests
for (i in 1:10000){
  x <- rnorm(10,mean=185,sd=10)
  y <- rnorm(10,mean=177,sd=10)
  z =  (mean(x) - mean(y))/sqrt(20)
  pval <- c(pval, 1 -  pnorm(z))
}
table(pval<0.05)


