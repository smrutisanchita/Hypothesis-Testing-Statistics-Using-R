#Example 1 ---- simple linear regression
#company marking spend vs sales
dataset = read.csv("data-marketing-budget-12mo.csv", header=T, colClasses = c("numeric", "numeric", "numeric"))


simple.fit = lm(Sales ~ Spend, data=dataset)
summary(simple.fit)

qqnorm(simple.fit$residuals, pch=2, frame=FALSE)
qqline(simple.fit$residuals, col = "steelblue", lwd = 2)


#calculate the confidence interval for the gradient parameter.
#use t-distribution
SSR = sum(simple.fit$residuals^2)
SSX = sum(dataset$Spend^2) - length(dataset$Spend)*(mean(dataset$Spend))^2
sqrt(SSR/12/SSX)
qt(1-0.05/2,12-2)
10.6222 - sqrt(SSR/12/SSX) * qt(1-0.05/2,12-2)
10.6222 + sqrt(SSR/12/SSX) * qt(1-0.05/2,12-2)
#use normal distribution
10.6222 - 0.1625 * qnorm(1-0.05/2)
10.6222 + 0.1625 * qnorm(1-0.05/2)


opar <- par(mfrow = c(2,2), oma = c(0, 0, 1.1, 0))
plot(simple.fit, las = 1)      # Residuals, Fitted, ...
par(opar)
# the leverage h_ii is the element in H = X(X'X)^{-1}X', which shows the distance of a point is from other points. Useful for detecting outliers


#Example 2 ---- multiple linear regression
Year <- c(2017,2017,2017,2017,2017,2017,2017,2017,2017,2017,2017,2017,2016,2016,2016,2016,2016,2016,2016,2016,2016,2016,2016,2016)
Month <- c(12, 11,10,9,8,7,6,5,4,3,2,1,12,11,10,9,8,7,6,5,4,3,2,1)
Interest_Rate <- c(2.75,2.5,2.5,2.5,2.5,2.5,2.5,2.25,2.25,2.25,2,2,2,1.75,1.75,1.75,1.75,1.75,1.75,1.75,1.75,1.75,1.75,1.75)
Unemployment_Rate <- c(5.3,5.3,5.3,5.3,5.4,5.6,5.5,5.5,5.5,5.6,5.7,5.9,6,5.9,5.8,6.1,6.2,6.1,6.1,6.1,5.9,6.2,6.2,6.1)
Stock_Index_Price <- c(1464,1394,1357,1293,1256,1254,1234,1195,1159,1167,1130,1075,1047,965,943,958,971,949,884,866,876,822,704,719)   
plot(x=Unemployment_Rate, y=Stock_Index_Price) 
model <- lm(Stock_Index_Price ~ Interest_Rate + Unemployment_Rate)
summary(model)

qqnorm(model$residuals, pch=1, frame=FALSE)
qqline(model$residuals, col = "steelblue", lwd = 2)

#prediction
#Interest Rate = 1.5 (i.e., X1= 1.5)
#Unemployment Rate = 5.8 (i.e., X2= 5.8)

----------------------------------------------------------------------
  
#Example 1 ---- simple linear regression
#company marking spend vs sales
dataset = read.csv("data-marketing-budget-12mo.csv", header=T, colClasses = c("numeric", "numeric", "numeric"))


simple.fit = lm(Sales ~ Spend, data=dataset)
summary(simple.fit)

qqnorm(simple.fit$residuals, pch=2, frame=FALSE)
qqline(simple.fit$residuals, col = "steelblue", lwd = 2)


#calculate the confidence interval for the gradient parameter.
#use t-distribution
SSR = sum(simple.fit$residuals^2)
SSX = sum(dataset$Spend^2) - length(dataset$Spend)*(mean(dataset$Spend))^2
sqrt(SSR/10/SSX)
qt(1-0.05/2,12-2)
10.6222 - sqrt(SSR/10/SSX) * qt(1-0.05/2,12-2)
10.6222 + sqrt(SSR/10/SSX) * qt(1-0.05/2,12-2)
#use normal distribution
10.6222 - 0.1625 * qnorm(1-0.05/2)
10.6222 + 0.1625 * qnorm(1-0.05/2)


opar <- par(mfrow = c(2,2), oma = c(0, 0, 1.1, 0))
plot(simple.fit, las = 1)      # Residuals, Fitted, ...
par(opar)
# the leverage h_ii is the element in H = X(X'X)^{-1}X', which shows the distance of a point is from other points. Useful for detecting outliers


#Example 2 ---- multiple linear regression
Year <- c(2017,2017,2017,2017,2017,2017,2017,2017,2017,2017,2017,2017,2016,2016,2016,2016,2016,2016,2016,2016,2016,2016,2016,2016)
Month <- c(12, 11,10,9,8,7,6,5,4,3,2,1,12,11,10,9,8,7,6,5,4,3,2,1)
Interest_Rate <- c(2.75,2.5,2.5,2.5,2.5,2.5,2.5,2.25,2.25,2.25,2,2,2,1.75,1.75,1.75,1.75,1.75,1.75,1.75,1.75,1.75,1.75,1.75)
Unemployment_Rate <- c(5.3,5.3,5.3,5.3,5.4,5.6,5.5,5.5,5.5,5.6,5.7,5.9,6,5.9,5.8,6.1,6.2,6.1,6.1,6.1,5.9,6.2,6.2,6.1)
Stock_Index_Price <- c(1464,1394,1357,1293,1256,1254,1234,1195,1159,1167,1130,1075,1047,965,943,958,971,949,884,866,876,822,704,719)   
plot(x=Unemployment_Rate, y=Stock_Index_Price) 
model <- lm(Stock_Index_Price ~ Interest_Rate + Unemployment_Rate)
summary(model)

qqnorm(model$residuals, pch=1, frame=FALSE)
qqline(model$residuals, col = "steelblue", lwd = 2)

#prediction
#Interest Rate = 1.5 (i.e., X1= 1.5)
#Unemployment Rate = 5.8 (i.e., X2= 5.8)
  