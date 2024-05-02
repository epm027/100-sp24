library(tidyverse)

## start by encoding in the population,
## using "F" for female-identifying and
## "NF" for not female-identifying
pop <- c(rep("F", 20), rep("NF", 80))

## begin the simulation

set.seed(123)  # set seed for reproducibility purposes
n <- 30        # sample size
B <- 10000     # number of samples

props <- c()   # initialize a blank vector

for(b in 1:B) {
  temp_samp <- sample(pop, size = 30)
  props <- c(props, sum(temp_samp == "F")/n)
}

## generate a histogram of the approximate
## sampling distribution of P-hat

p1 <- props %>%
  data.frame() %>%
  ggplot(aes(x = props)) +
  geom_histogram(
    aes(y = after_stat(density)),
    bins = 13,
    col = "white"
  ) + 
  theme_minimal() +
  ggtitle(
    bquote("Approximate Sampling Distribution of"~hat(P))
  )

p1

## superimpose the "true" sampling distribution,
## as outlined in the DeMoivre-Laplace Theorem

p1 +
  stat_function(
    fun = dnorm,
    args = list(mean = 0.2,
                sd = sqrt(0.2 * 0.8 / n)),
    col = "blue",
    linewidth = 1
  )

## Check average of sampled P-hat values;
## should be close to 0.2

mean(props)

