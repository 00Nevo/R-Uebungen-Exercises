4 Graphics with R

4.1 Managing graphics
4.1.1 Opening several graphical devices
4.1.2 Partitioning a graphic
4.2 Graphical functions
4.3 Low-level plotting commands
4.4 Graphical parameters
4.5 A practical example
4.6 The grid and lattice packages
##there appears to be some mistake. 
##from the book
densityplot(~ x | y,
panel = function(x, ...) {
panel.densityplot(x, col="DarkOliveGreen", ...)
panel.mathdensity(dmath=dnorm,
args=list(mean=mean(x), sd=sd(x)),
col="darkblue")
})
##what i typed
> densityplot(~ x | y, panel =function (x,...) { panel.densityplot(x, col="DarkOliveGreen",...) panel.mathdensity(dmath=dnorm, args=list(mean=mean(x), sd=sd(x)), col="darkblue")})
Error: unexpected Symbol in "densityplot(~ x | y, panel =function (x,...) { panel.densityplot(x, col="DarkOliveGreen",...) panel.mathdensity"
> 
## after the error i tried installing the Lattice package but error is still there.

> xyplot(lat ~ long | depth.cat, data =quakes)
error in xyplot(lat ~ long | depth.cat, data = quakes) : 
  function "xyplot" cannot be found

# Load the lattice package
library(lattice)

# Create the xyplot with corrected reference to 'Species'
xyplot(Petal.Length ~ Petal.Width, data = iris, groups = ~Species, 
       panel = panel.superpose, type = c("p", "smooth"), span = 0.75, 
       auto.key = list(x = 0.15, y = 0.85))
## it worked i only got this error
Error in diff.default(xscale) : 
  VECTOR_ELT() can only be applied to a 'list', not a 'double'
> > 
## from chatgpt.. 1. Check for Missing or NA Values in Petal.Width or Petal.Length

## One common cause of this error is the presence of NA or missing values in the variables you're plotting (Petal.Width or Petal.Length). If these columns contain missing values, it can cause issues when calculating the axis scales.
1. Check for Missing or NA Values in Petal.Width or Petal.Length

Check for NA values:

# Check if there are any NA values in the columns Petal.Length or Petal.Width
sum(is.na(iris$Petal.Length))
sum(is.na(iris$Petal.Width))

If you find that there are NA values, you can remove them with the following:

# Remove rows with NA values in Petal.Length or Petal.Width
iris_clean <- na.omit(iris)

Then, try plotting the cleaned dataset:

xyplot(Petal.Length ~ Petal.Width, data = iris_clean, groups = ~Species, 
       panel = panel.superpose, type = c("p", "smooth"), span = 0.75, 
       auto.key = list(x = 0.15, y = 0.85))

2. Ensure that Petal.Width and Petal.Length are numeric

Ensure that the Petal.Length and Petal.Width columns are numeric, as the plot will fail if they are not. Sometimes, data might be read as factors or characters, which can lead to errors.

Check the classes of the columns:

# Check the classes of Petal.Length and Petal.Width
class(iris$Petal.Length)
class(iris$Petal.Width)

Both should return numeric. If they don’t, you can convert them to numeric:

# Convert to numeric if necessary
iris$Petal.Length <- as.numeric(iris$Petal.Length)
iris$Petal.Width <- as.numeric(iris$Petal.Width)

3. Simplify the Plot and Test

To isolate the issue, you could try plotting a simpler version of the plot, without adding the smooth line and other complexities:

# Simplified xyplot without the smoothing line
xyplot(Petal.Length ~ Petal.Width, data = iris, groups = ~Species)

This will help determine if the problem is related to the type = c("p", "smooth") part or other elements.
4. Use type = "p" (Points only) and Test

If the simplified plot works, you can start adding back the additional components step by step. For example, try using type = "p" first (just points) and then add the smooth line later:

# First, plot points only
xyplot(Petal.Length ~ Petal.Width, data = iris, groups = ~Species, 
       panel = panel.superpose, type = "p", auto.key = list(x = 0.15, y = 0.85))

# Then, try adding smooth line (type = c("p", "smooth")) once points work
xyplot(Petal.Length ~ Petal.Width, data = iris, groups = ~Species, 
       panel = panel.superpose, type = c("p", "smooth"), span = 0.75, 
       auto.key = list(x = 0.15, y = 0.85))

Conclusion:

    Check for NA values in Petal.Length and Petal.Width.

    Ensure that both Petal.Length and Petal.Width are numeric.

    Try simplifying the plot to isolate where the problem lies.
..
5 Statistical analyses with R
