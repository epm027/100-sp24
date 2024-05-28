## Lecture 17: Simple Demonstration of PCA
## PSTAT 100: Spring 2024, with Ethan P. Marzban

library(tidyverse)  # for data wrangling and plotting
library(MASS)       # for generation of MVN samples

set.seed(123)

X <- mvrnorm(
  n = 100,
  mu = c(2, 2),
  Sigma = matrix(c(1, 0.9,
                   0.9, 1),
                 nrow = 2, byrow = T)
)

## We'll add more code here.