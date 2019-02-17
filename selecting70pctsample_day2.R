#partition the data into train and test set
mtcars
nrow(mtcars)
#train-70%, test-30%
sample(x=1:32, size=.7 * 32)
index = sample(x=1:nrow(mtcars), size=.7 * nrow(mtcars), replace=F)
index
mtcars[1,] # frist row 
mtcars[c(1,4)]
mtcars[-c(1,4)] # except 1 all rows

train= mtcars[index,] # equivalent to pt. 9
test= mtcars[-index,]
nrow(train)
nrow(test)
nrow(train) + nrow(test)





#-------
data(mtcars)

## 75% of the sample size
smp_size <- floor(0.75 * nrow(mtcars))

## set the seed to make your partition reproducible
set.seed(123)
train_ind <- sample(seq_len(nrow(mtcars)), size = smp_size)

train <- mtcars[train_ind, ]
test <- mtcars[-train_ind, ]

# -----
require(caTools)