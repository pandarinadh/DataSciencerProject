library(datasets)
data(iris)
str(iris)
head(iris)
mean(iris$Sepal.Length)
median(iris$Sepal.Length)
range(iris$Sepal.Length)
diff(range(iris$Sepal.Length))
#quartiles
#frist arrange in ascending order
#calculate median
#
summary(iris$Sepal.Length)
summary(iris)

#number of observations
#number of features
#data types
#sample data

#analysis of continuous data

#central tendency
#spread or dispersion

#central tendency
#mean - sum of all the values / number of values

#median  - arrange values in ascending order - get the center values 
#then do the average

#Spread(Range) - maximum - minimum

#Spread quartiles  - 
#box splot or whisker plot

boxplot(iris$Sepal.Length)

boxplot(iris$Sepal.Length, horizontal = TRUE)
boxplot.stats(iris$Sepal.Length)
boxplot(iris[1:4])

#histogram
hist(iris$Sepal.Length)

hist(iris$Sepal.Length,
    main = "Histogram of sepal length",
    xlab = "sepal length"
    )


#variance and standard deviation
var(iris$Sepal.Length)
sd(iris$Sepal.Length)

#analysis of categorical data
#frequency distribution
#category statistics

#frequency distribution
table(iris$Species)
barplot(table(iris$Species))
prop.table(table(iris$Species))
prop.table(table(iris$Species)) * 100

#category statistics

install.packages("psych")
library("psych")
describeBy(iris, group = iris$Species)
library(lattice)
histogram(~Sepal.Length | Species,
    data = iris,
    layout = c(1, 3),
    col="black")
boxplot(Sepal.Length~Species, data=iris)