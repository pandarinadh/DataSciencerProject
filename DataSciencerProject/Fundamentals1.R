
IsGoodperformanceByBatch <- function(test.marks) {
    average.marks <- mean(test.marks)
    performance.test <- average.marks >= 75
    print(paste("average marks :", average.marks, "performace.test :", performance.test)
        )

    if (performance.test) {
        print("overall performance of the batch is brilliant")
    } else {
        print("overall performance of the batch is average")
    }

    print ("performance test completed")
}


IsGoodperformanceByBatch(test.marks = c(70L, 75L, 80L, 85L))
IsGoodperformanceByBatch(test.marks = c(50L, 55L, 50L, 55L))

#ifelse
test.marks <- c(70L, 75L, 80L, NA)
test.marks >= 75
ifelse(test.marks >= 75, c("Great", "Bravo", "Excellent", "Congrats"),
    c("Keep it up", "Not bad", "just missed", "just ok"))

#apply function

student.marks <- matrix(c(70L, 75L, 72L, 80L, 50L,
                           80L, 85L, 60L, 72L, 88L,
                           60L, 70L, 87L, 55L, 90L,
                           85L, 70L, 74L, 86L, 87L
                            ), ncol = 5, nrow = 4, byrow = TRUE)

rownames(student.marks) <- c("Raj", "Rahul", "Priya", "Poonam")
colnames(student.marks) <-
c("Physics", "Chemistry", "Mathematics", "Biology", "History")
student.marks

result <- vector("numeric", length = nrow(student.marks))
for (row in 1:nrow(student.marks)) {
    sum <- 0
    for (column in 1:ncol(student.marks)) {
        sum <- sum + student.marks[row, column]
    }
    result[row] <- sum

}
result

apply(student.marks, 1, sum) #1 row wise 
apply(student.marks, 1, max) #1 row wise 
apply(student.marks, 1, which.max)
colnames(student.marks)[apply(student.marks, 1, which.max)]

apply(student.marks, 2, mean) #1 column wise 
apply(student.marks, 2, max) #1 column wise 
rownames(student.marks)[apply(student.marks, 2, which.max)]
apply(student.marks, 1:2, function(x) x + 2)

#packages
packages <- installed.packages()
View(packages)

search()

#https://cran.r-project.org/ to see the packages

setRepositories()
install.packages("plyr", lib = "C:/Program Files/Microsoft/R Client/R_SERVER/library")
install.packages("devtools")
update.packages()

library("plyr")

