##
3 Data with R

3.1 Objects

3.2 Reading data in a file

3.3 Saving data

3.4 Generating data

3.5 Manipulating objects

Expression.
## i did get an error that exp1 was not defined when i tried to run the derivative example so i asked chat gpt and this is the solution offered
> D(expl, "x")
Error: Object 'expl' not found
> exp1
expression(x/(y + exp(z)))
> D(expl, "x")
Error: Object 'expl' not found

> exp1 <- expression(x^2 + 3*x +2)
> derivative <- D(exp1, "x")
> print(derivative)
2 * x + 3

3.5.3 Operators.
## i get following error with what it is written in the book but in the book they get no error!?
> x <- 0.5
> 0 <x <1
Error: Unexpected(s) '<' in "0 <x <"
##  ChatGpt says that in R, the syntax for comparisons isn't directly the same as in some other programming languages (e.g., Python). 
## The error occurs because i am trying to chain comparison operators like 0 < x < 1, which isn't valid in R.
## so i need to compare if x is between 0 and 1
 
x <- 0.5
result <- (x > 0) & (x < 1)
print(result)
TRUE

3.5.1 Creating objects

3.5.2 Converting objects

3.5.4 Accessing the values of an object: the indexing system

3.5.5 Accessing the values of an object with names

3.5.7 Arithmetics and simple functions

3.5.8 Matrix computation





