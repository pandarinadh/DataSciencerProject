

getwd() #get working directory path
#.csv file
setwd(file.path("c:", "my","Practice","DataSciencerproject" )) #set working directory
file <- file.path("DataFile", "Sample1.csv")
my.data <- read.csv(file)
str(my.data)
my.data

#import table

setwd(file.path("c:", "my", "Practice", "DataSciencerproject")) #set working directory
file <- file.path("DataFile", "Sample2.txt")
my.data1 <- read.table(file,
    header = TRUE,
    dec = ".",
    skip = 1,
    colClasses = c("character", "factor", "numeric", "integer", "integer"))

#incomplete final line found by readTableHeader on 'DataFile/Sample2.txt'
#to remove the error, 
#Open the file
#Navigate to the very last line of the file
#Place the cursor the end of that line
#Press return / enter
#Save the file

str(my.data1)
my.data1

#import from url
#https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data
url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data"
setwd(file.path("c:", "my", "Practice", "DataSciencerproject")) #set working directory
local <- file.path("DataFile", "sample3.data")
download.file(url, local)
my.data2 <- read.table(local, sep = ",")
str(my.data2)
my.data2

#xml file
Sys.getlocale()
Sys.setlocale("LC_ALL", "ENG")
setwd(file.path("c:", "my", "Practice", "DataSciencerproject")) #set working directory
file <- file.path("DataFile", "Sample4.xml")
install.packages("XML")
install.packages("RCurl")
library(XML)
library(RCurl)
my.data3 <- xmlToDataFrame(file,
                            colClasses = c("character", "integer", "integer"),
                            stringsAsFactors = FALSE)           
    
str(my.data3)
my.data3

#excel files

#datasets

library(datasets)
data(package = "datasets")
data(iris)
str(iris)
iris


#database
install.packages("RODBC")
library(RODBC)
connect <- odbcConnect("Create your own odbc connection")
my.data <- sqlquery(connect, " query ")
my.data
