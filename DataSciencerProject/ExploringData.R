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