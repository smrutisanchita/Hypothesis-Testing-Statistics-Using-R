#Linear regression Excercise
#Exercise R lab solutions
# Exercise 1
height = c(171, 168, 166, 177, 180, 171, 170, 173, 172, 165)
weight = c(79, 64, 65, 73, 85, 72, 75, 74, 66, 59)

myresult = lm(weight ~ height)
summary(myresult)
-158.33 + 1.34*168

qqnorm(myresult$residuals, pch=1, frame=FALSE)
qqline(myresult$residuals, col = "steelblue", lwd = 2)

1.3399 + 0.3596*qnorm(0.975)
1.3399 - 0.3596*qnorm(0.975)

4.984^2

#1. The estimate for alpha is -158.33. The estimate for beta is 1.34

#2. The forecasted weight for Damien is 66.79 
-158.33 + 1.34*168

#3. The R-square value is 0.6345. This means that about 63% of the total variation of weight, can be interpreted by the linear model alpha + beta*height. So the linear model assumption for the data analysis is reasonably OK.

#4. For the hypothesis test H0: alpha =0; H1: alpha not equal 0, we can find the correponding p-value from the output, as 0.03315, which is less than the significant level, therefore we shall reject the NULL hypothesis.

#5. The qqplot shows that the residual points are close to the straight line, therefore the normal distribution assumption for the residuals is valid.
qqnorm(myresult$residuals, pch=1, frame=FALSE)
qqline(myresult$residuals, col = "steelblue", lwd = 2)

#6. The 95% Confidence interval for beta is [0.635097, 2.044703]
1.3399 + 0.3596*qnorm(0.975)
1.3399 - 0.3596*qnorm(0.975)

#7. The estimate for the residual variance is 24.84026
4.984^2
---------------------------------------------------------------------
#Exercise 2

#The data is created as
X = c(20.7, 27.4, 25.3, 21.1, 20.5, 24.7, 22.1, 26.3, 24.1, 22.1)
#sample mean is
barX = mean(X)
#sample standard deviation is
s = sqrt(var(X))
# the test statistic is
T = (barX - 22)/(s/sqrt(10))
# we got T = 1.836607
#The critical points are -3.2498, 3.2498
qt(1 - 0.01/2, 9)
qt( 0.01/2, 9)
#The statistic T is in the interval [-3.2498, 3.2498], not in the rejection region. Therefore, we shall not reject the NULL hypothesis.