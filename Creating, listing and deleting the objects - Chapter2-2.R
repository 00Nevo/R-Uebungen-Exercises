2.2 Creating, listing and deleting the objects in memory

> n <- 15
> n [1] 15
Fehler: unerwartete numerische Konstante in "n [1] 15"
> n
[1] 15
> n
[1] 15
> n
[1] 15
> 5 -> n
> n
[1] 5
> n
[1] 5
> x <-1
> X <- 10
> x
[1] 1
> x
[1] 1
> X
[1] 10
> X
[1] 10

> n <- 10+2
> n
[1] 12
> n <-3 + rnorm(1)
> n
[1] 3.175813
> (10 +2) *5
[1] 60
> name <- "Carmen"; n1 <- 10; n2 <- 100; m <- 0.5
> 1s()
Fehler: unerwartetes Symbol in "1s"
> ls()
[1] "m"    "n"    "n1"   "n2"   "name" "x"    "X"   
> ls(pat = "m")
[1] "m"    "name"
> ls(pat = "^m"
+ 
+ kj
Fehler: unerwartetes Symbol in: 
"
kj"
> ls(pat = "^m")
[1] "m"
> ls.str()
m :  num 0.5
n :  num 3.18
n1 :  num 10
n2 :  num 100
name :  chr "Carmen"
x :  num 1
X :  num 10
> M<- data.frame(n1,n2,m)
> ls.str(pat="M")
M : 'data.frame':       1 obs. of  3 variables:
 $ n1: num 10
 $ n2: num 100
 $ m : num 0.5
> ls.str(pat="M", max.level=-1)
Fehler in ls.str(pat = "M", max.level = -1) : 
  unbenutztes Argument (max.level = -1)
> ls.str(pat="M", max.level=-1)
Fehler in ls.str(pat = "M", max.level = -1) : 
  unbenutztes Argument (max.level = -1)
> # List objects starting with "M"
> objects_with_M <- ls(pattern = "^M")
> #??
> 

