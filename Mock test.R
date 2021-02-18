#Exercise 1:
#Let Y be a RV with distribution Poisson(2).

#a) Find the value of P[X = 0].
dpois(0,2)
0.1353353

#b) Compute P[X ??? 4].
ppois(4,2)
0.947347

#2. Let X be a RV with distribution Normal(???2, 5).
#Compute P[???2 < X ??? 0].
pnorm(0,-2,5) - pnorm(-2,-2,5)
0.1554217

#3. a) Write the R-command for creating a vector x from 8 generated observations
#from Chisquare(10). 

x=rchisq(8,10)
x
#Compute the sample mean, median, and standard deviation of x.
mean(x)
8.12731

median(x)
6.14903

sd(x)
4.784729

##################################################################################
Exercise 2:
  
  The following data are on the heights of 10 pairs of brothers and sisters
Brother 71 68 66 67 70 71 70 73 72 65
Sister 69 64 65 63 65 62 65 64 66 59
We want to analyze these data based on the linear regression model Yi = ?? + ?? Xi + ??i

#Create a vector X from the heights of brothers, and a vector Y from the heights of sisters
X=c(71 ,68 ,66, 67, 70, 71, 70, 73, 72, 65)
Y=c(69, 64, 65, 63, 65, 62, 65, 64, 66, 59)

#2. Find the least square estimates of ?? and ??
lm(Y ??? X)
(Intercept)            X  
29.1716       0.5055
alpha=29.1716
beta=0.5055

#Damien is 70 inch tall. Predict the heights of his sister Jane.
alpha+ beta*70
64.5566

4. Carry out the hypothesis test of H0 : ?? = 0 and H1 : ?? ??= 0.
regression = lm(Y ??? X)
summary(regression)
#p-value: 0.1272

We don't reject the hypothesis H0 : ?? = 0 at significance level 0.05



##############################################################################
An experiment was carried out to study the lifetimes of two different kinds of fuses. Lifetimes
for samples of fuses were recorded

A data set with n1 = 9 samples was collected for the first type of fuse. The sample mean is
x¯1 = 5.2 and sample variance is s1square= 0.3

Another data set with n2 = 7 samples was collected for the second type of fuse. The sample
mean is ¯x2 = 7.0 and sample variance is s2square= 0.26.

Choose a suitable hypothesis test method to test, at significance level 0.01, 
H0 : sigma1_square=sigma2_square
H1 : sigma1_square!=sigma2_square # two tailed test

x_bar1=5.2
s1square=0.3
n1=9

x_bar2=7.0
s2square=0.26
n2=7

alpha=0.01  
#Ho: s1square=s2square
#Hi: s1square!=s2square

F=(s1square)/(s2square)  # 1.153846


qf(alpha/2,n1-1,n2-1)   # lower limit 0.1257546
qf(1-alpha/2,n1-1,n2-1) # upper limit 10.56576

#CR for F (-Inf,0.1257546] U [10.56576,Inf)

as F doesnot lie within CR , we will not reject Ho

2. Based on the result in the previous question, choose a suitable hypothesis test
method to test, at significance level 0.01, 
H0 : µ1 = µ2 against 
H1 : µ1 < µ2, 
where µ1 and µ2 are the population means for the lifetimes of the two types of fuses.

x_bar1=5.2
s1square=0.3
n1=9

x_bar2=7.0
s2square=0.26
n2=7

alpha=0.01  

#one tailed t test

SPsquare = ( (n1-1)*s1square+(n2-1)*s2square )/(n1+n2-2)
T = (x_bar1 - x_bar2)/sqrt(SPsquare*(1/n1+1/n2))  #-6.715823

qt(alpha,n1+n2-2)  #-2.624494

CR for T is (-inf,-2.624494]

as T lies within CR , we reject Ho




