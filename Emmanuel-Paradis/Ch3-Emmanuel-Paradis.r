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


3.5.1 Creating objects

3.5.2 Converting objects

3.5.4 Accessing the values of an object: the indexing system

3.5.5 Accessing the values of an object with names

3.5.7 Arithmetics and simple functions

3.5.8 Matrix computation





