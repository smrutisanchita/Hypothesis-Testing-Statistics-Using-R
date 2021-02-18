#Set 1  1 Sample Z- test 
##########################
#Question 1
1 Sample Z- test 
---------------
#ho: u=130
#h1: u!=130

n=9
mu0=130
x_bar=131.08
sigma=1.5
alpha=0.01

z=(x_bar-mu0)/(sigma/sqrt(n))
#two tail test
qnorm(alpha/2)
# as z is not in CR , we will NOT reject Ho
------------------------------------------------------------
#Question 2

#ho: u=75
#h1: u<75

n=25
mu0=75
x_bar=72.3
sigma=9
alpha=0.05

z=(x_bar-mu0)/(sigma/sqrt(n))
#one tail test
qnorm(alpha)
# CR for Z (-inf,-1.644]
# As z doesnt lie within CR , we will NOT Reject Ho

#part b
alpha=0.1
mu1=71

cp=qnorm(alpha)  #1.28
#P(z>-1.28|u=71)
type_2_error=1-pnorm(cp-(mu1-mu0)/(sigma/sqrt(n))) # 0.1734
----------------------------------------------------------------------
# question 3
#ho: u=750
#h1:u<750 

mu0=750
sigma=38
n=50
x_bar=738.44
alpha=0.05

z=(x_bar-mu0)/(sigma/sqrt(n)) # -2.15
qnorm(alpha)  # -1.644
# CR for z is (-inf,-1.644]

# as z lies within CR , we Reject Ho
# Thus average life time is less than 750hrs, do not buy them 

