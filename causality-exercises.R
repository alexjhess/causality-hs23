### Causality Exercises ###
#
# ETH course 401-4632-15L Causality HS 2023
# Lecturer: Jonas Peters
#

# load libraries
library(ggplot2)
library(ggExtra)

# set seed of RNG
set.seed(1234)


## 1. Sampling from an SCM

# sample from SCM
n <- 200
Nx <- rnorm(n, 0, 1)
Y <- rnorm(n, 0, 1)
X <- Y^2 + Nx

# plot joint distr (X,Y)
df1 <- data.frame(X,Y)
p1 <- ggplot(df1, aes(X,Y)) + geom_point()
p2 <- ggMarginal(p1, type="histogram")
print(p2)


## 9. Multivariate SCMs

# b) sample from SCM
al <- 2
n <- 200
V <- rnorm(n, 0, 1)
Nw <- rnorm(n, 0, 1)
Nx <- rnorm(n, 0, 1)
Ny <- rnorm(n, 0, 1)
Nz <- rnorm(n, 0, 1)
X <- 2*V + Nx
Y <- -X + Ny
Z <- al*X + Nz
W <- -2*V + 3*Y + 5*Z + Nw

# plot joint distr (X,W)
df2 <- data.frame(X,W)
p3 <- ggplot(df2, aes(X,W)) + geom_point()
p4 <- ggMarginal(p3, type="histogram")
print(p4)

# c) sample from intervention distr P_{X,W}(do(X:=3))
V <- rnorm(n, 0, 1)
Nw <- rnorm(n, 0, 1)
Ny <- rnorm(n, 0, 1)
Nz <- rnorm(n, 0, 1)
X <- rep(3, n)
Y <- -X + Ny
Z <- al*X + Nz
W <- -2*V + 3*Y + 5*Z + Nw

# plot intervention distr P_{X,W}(do(X:=3))
df3 <- data.frame(X,W)
p5 <- ggplot(df3, aes(X,W)) + geom_point()
p6 <- ggMarginal(p5, type="histogram")
print(p6)

# plot both distributions in one plot
p7 <- ggplot(df2, aes(X,W)) + geom_point() + geom_point(data=df3,colour="red")
print(p7)
