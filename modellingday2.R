# modelling
# linear Regression - sinlge , multiple
#y ~ x1 (SLR); y ~ x1 + x2 . . . (MLR)
#y - Dependent variable, x - Independet

head(women)
#y - weight, x = height
cor(women$height, women$weight) # strangth & direction of a relationship- positive or negative


cov(women$height, women$weight)
#height increases weight increases
plot(women$height, women$weight)
#perform linear modelling
fit1 =lm(weight ~ height, data=women) #lm is a command for linear modelling
summary(fit1)
#F stats Pvalue << 0.05 : Linear Model exist
#at least 1 Independent Variable is significant in predicting Dependent variable
#Multiple Rsquare value = .991 coeff of Determination
# Multiple when you have one IV, otherwise take Adj Rsq
#99% of the variation in Y is explained by Xs
#y = mx + C ; y = -87 + 3.45 * height
range(women$height)
# only do interpolation, not exterpolation
women$weight
women$height
(y= -87 + 3.45 * women$height)
# predicted weights for actual heights
fitted(fit1) # pt. 27 and 29 = 28 # predicted values
residuals(fit1) # it is the difference between predicted and actual weights
summary(residuals(fit1)) # summary of difference b/w predicted and actual
summary(students[,5:6]) # summary of marks1 and marks2


(newdata1 = data.frame(height=c(60,4,55,9,8,23)))
(p1 =predict(fit1, newdata = newdata1, type='response'))# predict newdata1
cbind(newdata1, p1) # bind in columns - 'cbind'
# I
# check for assumptions of linear regression
plot(fit1)

