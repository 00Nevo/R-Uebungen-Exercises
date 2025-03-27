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

..
5 Statistical analyses with R
