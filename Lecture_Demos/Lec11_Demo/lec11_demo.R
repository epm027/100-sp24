library(tidyverse)
library(palmerpenguins)

x <- c(1, 2, 3)
y <- c(2, 3, 1)

data.frame(x, y) %>%
  ggplot(aes(x = x, y = y)) +
  geom_point()  +
  theme_minimal()

lm(y ~ x) %>% summary()

cor(x, y)


## penguin example

penguins %>%
  filter(species == "Gentoo") %>%
  ggplot(aes(x = bill_length_mm,
             y = bill_depth_mm)) +
  geom_point() +
  theme_minimal() +
  geom_smooth(method = "lm", 
              formula = y~x,
              se = F)

gentoo_only <- penguins %>% filter(species == "Gentoo")

linmod_1 <- lm(gentoo_only$bill_depth_mm ~ gentoo_only$bill_length_mm)
summary(linmod_1)

penguins %>%
  filter(species == "Gentoo") %>%
  ggplot(aes(x = bill_length_mm,
             y = bill_depth_mm)) +
  geom_point() +
  theme_minimal() +
  geom_abline(intercept = coef(linmod_1)[1],
              slope = coef(linmod_1)[2])

coef(linmod_1)
