#Data Visualization

# 1 - how many cars of each type of transmission - Frequency Bar of Categorical transmission variable
#2 - what does fuel economy look like - Histogram & Density Plot
#3 - how do cylinders and fuel econmomy relate?  Scatter Plotter graph

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

# install package dplyr

install.packages("ggplot2")

#Load the ggplot2 library

library(ggplot2)

# create a frequency bar chart
ggplot(data = cars,
aes(x = Transmission)) +
geom_bar() +
ggtitle("Connt of cars by Transmission Type") +
xlab("Transmission Type") +
ylab("Count of Cars")


#create a histogram

ggplot(
    data = cars,
aes(x = Fuel.Economy)) +
geom_histogram(bins = 10) +
ggtitle("Distribution of Fuel Economy") +
xlab("Fuel Economy (mpg)") +
ylab("Count of Cars")

# create a density plot

ggplot(
    data = cars,
aes(x = Fuel.Economy)) +
geom_density() +
ggtitle("Distribution of Fuel Economy") +
xlab("Fuel Economy (mpg)") +
ylab("Density")

# create a scatterplot
ggplot(
    data = cars,
aes(x = Cylinders,
y = Fuel.Economy)) +
geom_point() +
ggtitle("Fuel Economy by cylinders") +
xlab("Number of cylinders") +
ylab("Fuel Economy (mpg)")
