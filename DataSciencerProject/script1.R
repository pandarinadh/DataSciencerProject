#working with data

#set the working  directory

setwd("C:/my/Practice/DataSciencerproject/DataFile")

#read a tab - delimited data file
cars <- read.table(
    file = "Cars.txt",
    header = TRUE,
    sep = "\t",
    quote = "\"")

# peek the data
head(cars)

# install package dplyr

install.packages("dplyr")

# load the dplyr library

library(dplyr)

#select a subset of columns
temp <- select(
    .data = cars,
    Transmission,
    Cylinders,
    Fuel.Economy)

#peek temp
head(temp)

#Filter a subset of rows

temp <- filter(
    .data = temp,
    Transmission == "Automatic")

#peek the data
head(temp)

#compute a new column

temp <- mutate(
    .data = temp,
    Consumption = Fuel.Economy * 0.425)

#insepct the data
head(temp)

#Group by a column

temp <- group_by(
    .data = temp,
    Cylinders )

#inspect the data
head(temp)

# aggreagate based on groups
temp <- summarize(
    .data = temp,
    Avg.Consumption = mean(Consumption) )


#inspect
head(temp)

#Arrange the rows in desending order

temp <- arrange(
    .data = temp,
    desc(Avg.Consumption))

#inspect temp
head(temp)

# convert to data frame

efficiency <- as.data.frame(temp)

#inspect
print(efficiency)


#Chain method together

efficiency <- cars %>%
    select(Fuel.Economy, Cylinders, Transmission) %>%
    filter(Transmission == "Automatic") %>%
    mutate(Consumption = Fuel.Economy * 0.425) %>%
    group_by(Cylinders) %>%
    summarize(Avg.Consumption = mean(Consumption)) %>%
    arrange(desc(Avg.Consumption)) %>%
    as.data.frame(temp)

#inspect 
print(efficiency)

write.csv(
    x = efficiency,
    file = "Fule Efficiency.csv",
    row.names = FALSE)