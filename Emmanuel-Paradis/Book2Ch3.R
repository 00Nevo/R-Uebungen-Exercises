3
Programming R Functions

3.1 Environments
## differences between a Get function and an Assign function
1. get() Function

    Purpose: get() is used to retrieve the value of a variable (or object) by name.

    Usage: It takes a string (the name of a variable) and returns the value of the variable with that name.

    Syntax: get("variable_name")

    Example:

    x <- 10  # Assign a value to 'x'
    value <- get("x")  # Retrieve the value of 'x' using get()
    print(value)  # This will print 10

    Explanation: get() allows you to access the value of a variable whose name is passed as a string. This is particularly useful when the variable name is dynamically determined.

2. assign() Function

    Purpose: assign() is used to assign a value to a variable by name.

    Usage: It takes two arguments: a string (the name of the variable) and the value to be assigned to that variable.

    Syntax: assign("variable_name", value)

    Example:

assign("y", 25)  # Assigns 25 to a variable named 'y'
print(y)  # This will print 25

Explanation: assign() is used to assign values to variables when the variable name is given as a string. This is useful when the name of the variable is dynamic and not directly available in the script.


3.2 Arguments
3.2.2 Missing and NULL Arguments
##asking ChatGpt
is the cat func on R similar to the print func?

Yes, the cat() function in R is somewhat similar to the print() function, but there are important differences between them.
Differences:

    Newline Handling:

        cat() does not automatically add a newline at the end of the output.

        print() automatically adds a newline at the end of the output, so the output appears on a new line by default.

    Formatting:

        cat() outputs the text exactly as provided, without any extra formatting or type information.

        print() outputs the text along with some additional information about the object (for example, showing a data frame's structure or printing NULL when appropriate).

Example of cat():

cat("Hello, World!")

Output:

Hello, World!

Note: No newline after the message.
Example of print():

print("Hello, World!")

Output:

[1] "Hello, World!"

Note: print() adds the [1] and a newline after the message.
When to use each:

    cat(): Use it when you want to print something without any additional formatting and control the newline behavior yourself.

    print(): Use it when you want R to automatically handle the output, especially if you're dealing with more complex objects like data frames, lists, or vector


                                                                                          
3.2.3 The ‘...’ Argument
3.3 Return Value
3.3.1 Implicit and Explicit Returns
3.3.2 Assignment and Superassignment
3.4 Recursive Functions
3.5 Classes and Generic Functions
3.5.1 S3
3.5.2 S4
3.5.3 R6
3.6 Exercises
4
Data Manipulation
