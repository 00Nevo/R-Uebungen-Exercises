##Calculate Arithmetic Mean
 numbers <- c(3,5,6,7,9,8)
> mean_value <- mean(numbers)
> print(mean_value)
[1] 6.333333

##Calculate Median Value
> numbers <- c(4,9,6,3,4,2)
> median_value <- median (numbers)
> print(median_value)
[1] 4

> numbers <- c(9,8,1,8,5)
> median_value <- median (numbers)
> print(median_value)
[1] 8

##Calculate Statistical Mode Value
> get_mode <- function (x)
+ {ux <-unique (x)
+ ux[which.max(tabulate(match(x,ux)))]}
> numbers <- c(8,10,10,10,6,7,8)
> get_mode(numbers)
[1] 10

get_mode <- function(x) 
{ ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

## how to sort numbers in order to calculate median
numbers <- c(8, 10, 10, 10, 6, 7, 8)
sorted_numbers <- sort(numbers)
print(sorted_numbers)

## how to do median of numbers 
median(numbers)
# [1] 8

