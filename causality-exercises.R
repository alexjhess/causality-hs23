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


## 5. 
