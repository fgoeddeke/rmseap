library(shiny)
rmsea <- function(n, dfstr, dfmeas, chistr, chimeas){
  rmseap <<- sqrt(((chistr-chimeas)-(dfstr-dfmeas))/((dfstr-dfmeas)*(n-1)))
  l <- (chistr-chimeas)-(dfstr-dfmeas)
  k1 <- (dfstr-dfmeas)+ l
  k2 <- 2*(dfstr-dfmeas)+4*l
  k3 <- 8*(dfstr-dfmeas)+24*l
  h <- 1-((k1*k3)/(3*(k2^2)))
  b <- (k2/(2*k1))-(k3/(4*k2))
  xbar <- 1+(h/k1)*(((k2*(h-1))/(2*k1))+b)
  variance <- ((h^2)*k2)/(k1^2)
  sd <- sqrt(variance)
  lower <- xbar + (sd * qnorm(c(.05), mean=0, sd=1, lower.tail=TRUE))
  upper <- xbar + (sd * qnorm(c(.05), mean=0, sd=1, lower.tail=FALSE))
  xlower <- k1 * (lower ^ (1/h)) - b
  xupper <- k1 * (upper ^ (1/h)) - b
  llower <- xlower - (dfstr - dfmeas)
  lupper <- xupper - (dfstr - dfmeas)
  rmseapl <<- sqrt(llower/((dfstr-dfmeas)*(n-1)))
  rmseapu <<- sqrt(lupper/((dfstr-dfmeas)*(n-1)))
 }


