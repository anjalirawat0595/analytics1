library(Hmisc)
install.packages('Hmisc')
library(rpart)
install.packages('rpart')
library(DMwR)
install.packages('DMwR')
library(mice)
install.packages('mice')
path = 'https://raw.githubusercontent.com/nikhlesh17/Training/master/titanic.csv'
titanic <- read.csv(path)
is.na(titanic$survived) # if false no missing data if true yes missing data
sum(is.na(titanic$survided))
sum(is.na(titanic$age))
sapply(titanic,function(x) sum(is.na(x))) # columnwise shwoing total number of missing values
mean(titanic$age)
mean(titanic$age,na.rm = T) # remove missing values

complete.cases(titanic)  # which row have complete data in T/ F
sum(complete.cases(titanic))  # no of rows have which no missing data
sum(!complete.cases(titanic))  # no of rows which have missing data
titanic_cc <- titanic[complete.cases(titanic),]  #rows which are complete
titanic_ncc <- titanic[!complete.cases(titanic),] #rows which have missing values
str(titanic_cc)
str(titanic_ncc)

impute(titanic$age,mean) # replacing with mean value, it will not get deleted
impute(titanic$age,median) # median is for observation has lots of variance
impute(titanic$age,100)

library(DMwR)
knnOutput <- knnImputation(titanic[, !names(titanic) %in% "survived"]) # K near neighbour
# missing value will not get replaced by y value i.e survival

anyNA(knnOutput)


# takes time to run
mice1 <- mice(titanic[, !names(titanic) %in% "survived"], method="rf")  # perform mice imputation, based on random forests.
# creates multiple data frame and impute each data frame and gives the output

#This is where we can see the values
mice1$imp$age

# Pick the one which seems fine 
miceOutput <- complete(mice1,1)  # generate the completed data(by default first)
anyNA(miceOutput)



str(titanic)
g1 <- glm(survived ~ age+sex, data = titanic, family = 'binomial')
summary(g1)
