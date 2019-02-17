my first #file
women
# comment by starting #
#control + enter to execute command
?women
?mean
# to seek help write ? before function
mtcars
mean(mtcars$mpg)
names(mtcars)
mean(mtcars$hp)
colMeans(mtcars)
rowMeans(mtcars)
tail(mtcars,1)#last row
head(mtcars) # first six heads
hist(mtcars$mpg, breaks=3)


#vectors
x = c(1,2,5,7)
x
class(x)
xL = c(2L, 8L)
class(mtcars)
x3 = c("ä",'B','dhiraj')
x4
x4 = c(TRUE, FALSE, T, F)
x5
(x5 = 1:100000)
x5
x6 <- 2 # another way of assignment ; other is =
(x7 = rnorm(1000))
sd(x7)
mean(x7)
length(x7)
plot(density(x7))
hist(x7, freq=F) # ctrl + O
points (density (x7))

(x8 = rnorm(100, mean = 60, sd=10))
library(e1071)
kurtosis(x8)
skewness(x8)
hist(x8, freq = F)
points (density (x8))
round(x9, 1) # round off to 1
x9 = runif(100, 30, 90) # uniform distribution
trunc(x9) # to remove decimals 
floor(x9) # to remove decimal to lower no.
ceiling(x9) # to remove decimal and raise to higher
x10 = ceiling(x9) # x10 store , like a copy paste
x10
mean(x10)
median(x10)
sort(x10, decreasing=T) # decsending order
x10[x10 > 60] # values in x10 >60
x10[1:10] # 10 - 20 by no.
x10[20:30] # 20 to 30 by order
x10[ -c(1:20)] # don't want 1 to 20 and rest display me
x10[c(1,5,7)] # displaying by position

# vector is one dimension, single row or column
# matrices , two dimensins- only character or numerics only 
m1 = matrix(1:24 , nrow=6)  #display no. 1 to 24 in 6 rows
m1
dim(m1) # row/col
m2 = matrix(1:56, ncol=8)
m2
m3 = matrix(1:24, ncol=6, byrow = T) # rows are in sequence 
m3
colnames(m3) = month.abb[1:6]
m3
rownames(m3) = paste('Product', 1:4, sep='_') # Product numbering
m3
rowMeans(m3)
colMeans(m3)
m1
m1 [ 1:2] # square bracket is for values
m3
m3 [ 1,3]
m3
colMeans(m3[c(1,3), ]) # column mean of 1 & 3 products
m3[ , c('Ápr','Jan')]
m3[, c(1,3)]
m3[, c('Jan','Mar')]
m3[, c('Jan','Mar')]

min(m3) # minimum value
max(m3) # maximum value
# question

#data.frame = vectors with equal length
n=30
(rollno = paste('F',1:30,sep='_') )
(sname= paste('student',1:30,sep='&'))
set.seed(1234) # to generate a same pattern
(gender = sample(c('M','F'), size=n, replace=T,prob=c(.7,.3))) # replace- take out and then put it back
table(gender) # counting 
# prob is for generating data based on probability specified by the user

(t1=table(gender)) # stored in t1
prop.table(t1) # now proportionate of that in t1


(college = sample(c('SRCC','FMS','ÍIM'), size=n,replace=T, prob = c(.4,.3,.3)))
# sample bifurcation
(t2=table(college)) #collegewise data presentation
prop.table(t2) # proportionate
(marks1 = round(rnorm(n=n, mean=60,sd=10),0)) #roundoff kiya decimal place pe, rnorm-normal distribution
?rnorm # helpto find out error
(marks2 = round(rnorm(n=n, mean=55,sd=15),0))
rollno; sname; gender; college;marks1;marks2
length(gender) #

students = data.frame(rollno, sname, gender, college, marks1, marks2)
class(students)
students
head(students)
students$rollno
students[,c(2,5,6)]
students[,c('sname','marks1','marks2')] # presenting data like this
str(students)
summary(students) # create summary by col
quantile(students$marks1) # quantile - every 25th percent
quantile(students$marks1, probs=seq(0,1,.1)) # to get decide 
?sequence
quantile(students$marks1, probs=c(0,.25,.5,.75,1))
quantile(students$marks1, probs=seq(0,1,.01)) # from_to_
seq(from=1,to=100,by=3)
students$rollno =as.character(students$rollno)
students$sname =as.character(students$sname)
?seq
summary(students)
str(students)
summary(students)
students$rollno =as.character(students$rollno)
students$sname =as.character(students$sname)
str(students)
summary(students)
head(students)
write.csv(students, 'fms.csv', row.names = F)
students2 = read.csv('fms.csv')
head(students2)
students2 = read.csv(file.choose())
