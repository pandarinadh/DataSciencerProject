# CTRL + ENTER to execute the command, after each command, put that to see the R Interactive.
x = "hello world"
x
l <- TRUE
i = -123L

l
i

# function

f <- function(x) { x + 1 }

f(2)

# one dimension array
d <- c(1, 2, 3)

d

s <- 1:5
s
# creating matrix with two rows and 3 columns

m <- matrix(
    data = 1:6,
    nrow = 2,
    ncol = 3)

m

# Creating array
a <- array(
    data = 1:8,
    dim = c(2, 2, 2))

a

# creating list

l <- list(TRUE, 123L, 2.34, "ABC")
l

# CREATING a data frame

df <- data.frame(
    Name = c("Cat", "Dog", "Cow", "Pig"),
    HowMany = c(5, 10, 15, 20),
    IsPet = c(TRUE, TRUE, FALSE, FALSE))

df

# indexing data frames by row and column

df[1, 2]

# subsetting data frames

df[c(2,4),]

df[2:4,]

df[c(TRUE, FALSE, TRUE, FALSE),]

df[df$IsPet == TRUE,]
df[df$HowMany > 10,]
df[df$Name %in% c("Cat", "Cow"),]

1 + 2

c(1, 2, 3) + c(2, 4, 6)

# to get help, put ?.
?data.frame