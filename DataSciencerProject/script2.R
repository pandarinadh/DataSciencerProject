# Descriptive analysis

#set the working  directory

setwd("C:/my/Practice/DataSciencerproject/DataFile")

#read a tab - delimited data file
cars <- read.table(
    file = "Cars.txt",
    header = TRUE,
    sep = "\t",
    quote = "\"")

#inspect

head(cars)

#create a frequency table

table(cars$Transmission)

#GET THE minimum value

min(cars$Fuel.Economy)

max(cars$Fuel.Economy)

#get the average value
mean(cars$Fuel.Economy)

#get the median value
median(cars$Fuel.Economy)

#get the quartiles
quantile(cars$Fuel.Economy)

#get the standard deviation
sd(cars$Fuel.Economy)


#get the total value
sum(cars$Fuel.Economy)


#get the correlation value

cor(
    x = cars$Cylinders,
    y = cars$Fuel.Economy)

#summarize entire table

summary(cars)