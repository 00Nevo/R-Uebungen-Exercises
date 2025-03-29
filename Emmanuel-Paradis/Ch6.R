6 Programming with R in pratice

##code provided from book not working
y <- numeric(length(x)) for (i in 1:lenǵth(x)) if (x[i] == b) y [i] <- 0 else y [i] <- 1
Error: Unexpected(s) 'for' in "y <- numeric(length(x)) for"

##solution by chatgpt
# Define x and b for illustration
x <- c(1, 2, 3, 4, 5)
b <- 3

# Create a vector y with the same length as x, initialized to zeros
y <- numeric(length(x))

# Loop through each element of x
for (i in 1:length(x)) {
  if (x[i] == b) {
    y[i] <- 0
  } else {
    y[i] <- 1
  }
}

# Print the result
print(y)

6.1 Loops and vectorization
6.2 Writing a program in R
6.3 Writing your own functions
7 Literature on R
