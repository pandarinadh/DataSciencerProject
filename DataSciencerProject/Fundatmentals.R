# CTRL + ENTER to execute the command, after each command, put that to see the R Interactive.
mean(1:20)
match.score <- 200 #using assignment operator
match.score #print variable content
assign("match.score", 300) #using assign function
match.score #print variable content

#vector functions
student.marks <- c(10, 20, 30, 40)
student.marks

mean(student.marks)

student.marks <- student.marks + 5
student.marks

student.marks >= 30

student.physics.marks <- c(20, 40, 30, 40)
student.chemistry.marks <- c(30, 20, 50, 20)

student.total.marks <- student.chemistry.marks + student.physics.marks
student.total.marks

#Atomic vector

student.names <- c("Raj", "Rahul", "Priya", "Poonam") #character vector
student.names
str(student.names)
is.character(student.names) #test character vector


student.weights <- c(60.5, 72.5, 45.2, 47.5)
str(student.weights)
is.numeric(student.weights)

#create atomic vectors using vector()

vector("character", length = 4) #default : empty string
vector("numeric", length = 4) #default : 0
vector("integer", length = 4) #default : 0
vector("logical", length = 4) #default : flase
vector("complex", length = 4) #default : 0+0i

#perform arithemetic and logic operation on atomic vectors

student.physics.marks <- c(70L, 75L, 80L, 85L)

student.physics.marks >= 75


#Extract elements from atomic vectors
student.physics.marks[1]
student.physics.marks[1:3]

#coercions : converting one type to another

#Implicit Coercions
student.weights <- c(60.5, 72.5, 45.2, "47.5")
str(student.weights)


#explicit Coercions

as.numeric(student.physics.marks >= 75)
as.character(student.physics.marks)


#factor
student.genders <- c("Male", "Male", "Female", "Female") # character vector
student.genders
student.genders <- c(2L, 2L, 1L, 1L) #Integer vector
student.genders

student.genders <- factor(c("Male", "Male", "Female", "Female"))
student.genders

as.numeric(student.genders)

student.blood.groups <- factor(c("A", "AB", "O", "AB"), levels = c("A", "B", "AB", "O"))
str(student.blood.groups)

#list example

student.names <- c("A", "B", "C", "D")
student.weights <- c(60.5, 90.5, 84, 33.5)
student.genders <- factor(c("Male", "Male", "Female", "Female"))
student.physics.marks <- c(70L, 50L, 40L, 30L)
student.chemistry.marks <- c(44L, 33L, 66L, 22L)

#creating unnamed list

student1 <- list(student.names[1], student.weights[1], student.genders[1], student.physics.marks[1],
    student.chemistry.marks[1])

str(student1)
student1

#creating named list
student1 <- list(name = student.names[1],
            weight = student.weights[1],
            gender = student.genders[1],
            physics = student.physics.marks[1],
        chemistry = student.chemistry.marks[1])

str(student1)
student1 <- list(name = student.names[1],
            weight = student.weights[1],
            gender = student.genders[1],
            marks = c(student.physics.marks[1],
        student.chemistry.marks[1]))

str(student1)

student1[1]
typeof(student1[1])

student1[[1]]
typeof(student1[[1]])

student1["name"]

student1$gender

length(student1)

#create a data frame - to create a data frame list should have same lengh
students <- data.frame(student.names, student.weights, student.genders, student.physics.marks, student.chemistry.marks)
typeof(students)
students
str(students)

#use stringAsFactors = False, to avoid conversion of character vector to factor
students <- data.frame(student.names, student.weights, student.genders, student.physics.marks,
    student.chemistry.marks,
    stringsAsFactors = FALSE
    )
students
str(students)

students[1]
typeof(students[1])
students[[1]]
typeof(students[[1]])
students[["student.names"]]

students$student.names
students[1,2] #Row number, columner number
students[1:3, 1:2]

students[student.genders == "Male",]
students[student.physics.marks >= 75,]

#matrix

student.physics.marks <- c(70L, 50L, 40L, 30L)
student.chemistry.marks <- c(44L, 33L, 66L, 22L)

student.marks <- rbind(student.physics.marks, student.chemistry.marks)
student.marks

student.marks <- cbind(student.physics.marks, student.chemistry.marks)
student.marks

rownames(student.marks) <- c("Raj", "Rahul", "Priya", "Poonam")

student.marks
str(student.marks)


student.marks <- matrix(c(70L, 75L, 80L, 85L, 60L, 70L, 85L, 70L), ncol = 2, nrow = 4)
student.marks

student.marks <- matrix(c(70L, 75L, 80L, 85L, 60L, 70L, 85L, 70L), ncol = 4, nrow = 2,
    byrow = TRUE)

student.marks

#operation on matrix
student.physics.marks <- c(70L, 50L, 40L, 30L)
student.chemistry.marks <- c(44L, 33L, 66L, 22L)
student.marks <- cbind(student.physics.marks, student.chemistry.marks)
rownames(student.marks) <- c("Raj", "Rahul", "Priya", "Poonam")
student.marks

student.marks[,] #row number, column number
student.marks[2,2] # returns row number 2 and col 2
student.marks[2,] #all values in the 2nd row
student.marks[, 2] #all rows in 2n columns
student.marks[1:3,] #all columns from rows 1 to 3
student.marks[c(1,3),] #only 1 and 3 rd row with all columns
student.marks[c(T, F, F, T),] #1st and 4th row because True in the column

#summary
student.marks
rowSums(student.marks) #row wise sum
colSums(student.marks) #column wise sum
colMeans(student.marks) #column wise mean

#array
class1.student.physics.marks <- c(70L, 50L, 40L, 30L)
class1.student.chemistry.marks <- c(44L, 33L, 66L, 22L)
class1.student.marks <- cbind(class1.student.physics.marks, class1.student.chemistry.marks)

class1.student.marks

class2.student.physics.marks <- c(71L, 52L, 43L, 34L)
class2.student.chemistry.marks <- c(42L, 33L, 64L, 25L)
class2.student.marks <- cbind(class2.student.physics.marks, class2.student.chemistry.marks)

class2.student.marks

student.marks <- array(c(class1.student.marks, class2.student.marks), dim = c(4, 2, 2))
student.marks
student.marks[2, 2, 2]

#functions
GetTotalMarks <- function(quiz.marks, viva.marks) {
    total.marks <- quiz.marks + viva.marks
    total.marks # no need to use return key word instead place at end of the file
}
class1.student.physics.marks <- c(70L, 50L, 40L, 30L)
class1.student.chemistry.marks <- c(44L, 33L, 66L, 22L)
class1.student.marks <- GetTotalMarks(class1.student.physics.marks, class2.student.chemistry.marks)
class1.student.marks

#elipse
GetTotalMarks <- function(quiz.marks, viva.marks, ...) {
    total.marks <- quiz.marks + viva.marks + sum(...)
    extra.arguments <- list(...)
    print(extra.arguments)
    total.marks # no need to use return key word instead place at end of the file
}

GetTotalMarks(quiz.marks = c(70L, 50L, 40L, 30L), viva.marks = class2.student.chemistry.marks,
    creativity.marks = 2)

GetTotalMarks(quiz.marks = c(70L, 50L, 40L, 30L), viva.marks = class2.student.chemistry.marks,
    creativity.marks = 2,
    attendance.marks = 3)

#multiple returns

GetTotalMarks <- function(quiz.marks, viva.marks) {
    total.marks <- quiz.marks + viva.marks 
    avg.marks <- mean(total.marks)
    return ( list(total = total.marks, average = avg.marks))
}


GetTotalMarks(quiz.marks = c(70L, 50L, 40L, 30L), viva.marks = c(44L, 33L, 66L, 22L))


GetTotalMarks1 <- function(quiz.marks, viva.marks) {
    total.marks <- quiz.marks + viva.marks
    total.marks
}

GetTotalMarks1
formals(GetTotalMarks1)
body(GetTotalMarks1)
MyGetTotalMarks <- GetTotalMarks1
MyGetTotalMarks