x <- c(1, 2, 3, 4, 5, 6)
mean(x)

y <- mean(x)

sec_per_min <- 60
sec_per_hour <- 60
sec_per_day <- sec_per_hour*24
60* 60* 24

# Here I will demonstrate the error of adding a non-numeric argument to a binary operator
c(1, 2, 3, "Hi") + 1

class(FALSE)

# Here I will demonstrate how to add the vector plus one
c(1, 2, 3, FALSE) + 1

seq(from=0, to=10, by=0.5)
# Testing different ways to use seq
seq(0, 10, by=0.5)
x_axis <- seq(0, 10, by=0.5)
# use left arrow to name the variable

y_axis <- x_axis^2 + 2*x_axis + 3
y_axis

install.packages("ggplot2")
library(ggplot2)
qplot(x_axis, y_axis, xlab="My X Axis", ylab="My Y Axis", main="My Amazing plot of X Axis versus Y Axis", size=1.5)

qplot(x_axis,y_axis)


