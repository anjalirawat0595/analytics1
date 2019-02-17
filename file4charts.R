#graphs

mtcars
names(mtcars)
table(mtcars$cyl) # cylinderwise counting of cars
table(mtcars$cyl, mtcars$am) # mtcars$am=automatic
mtcars%mpg
#continuous data- histogram, boxplot
hist(mtcars$mpg)
boxplot(mtcars$mpg)
?boxplot
boxplot(mtcars$mpg, horizontal = T)
boxplot( mpg ~ gear, data=mtcars, col=1:3)
t1 = table(mtcars$gear)
t1
barplot(t1, col=1:3)
barplot(c(10, 3, 5)) # discrete count
pie(c(15,12,5))
students
t2 = table(students$college)
barplot(t2)
t2 = table(students$gender)
barplot(t2)
title('This is bar plot', sub = 'subtitle')
pie(t2)
