
women
sample(1:10, size=.7* 10)
sample(1:nrow(women), size=.7 * nrow(women))
anjali=sample(1:nrow(women), size=.7 * nrow(women)) # anjali is a vector where we have store this data
anjali
women[1,] # first row
women[anjali,] # showing 70% values out of anjali
train = women[anjali,]
test = women[-anjali,]

fit1 = lm(weight ~ height, data=train)
summary(fit1)
p4 = predict(fit1, newdata=test, type='response')
cbind(p4, test$weight)
