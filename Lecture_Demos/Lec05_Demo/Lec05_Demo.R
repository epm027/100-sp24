library(palmerpenguins)
library(tidyverse)

penguins %>% View()

# How are missing values encodded? Ans: NA
# How many penguins (observational units) were included in the study?

penguins %>% nrow()

# There are 344 penguins included in the dataset

# What are the variables?

penguins %>% names()

# What are the islands of Antarctica that were included in the dataset?

penguins$island %>% unique()

# What are the species?

penguins$species %>% unique()

# How many of each species are present?

penguins %>%
  group_by(species) %>%
  summarise(num_spec = n())

penguins$species %>% table() %>% barplot()


penguins %>% 
  ggplot(aes(y = species)) +
  geom_bar() +
  theme_minimal()


## more sophisticated plots

## are bill depths associated with bill lengths?

penguins %>% 
  ggplot(aes(x = bill_depth_mm,
             y = bill_length_mm)) +
  geom_point(aes(col = species)) +
  theme_minimal() +
  xlab("Bill Depth (mm)") +
  ylab("Bill Length (mm)") +
  ggtitle("Bill Length vs. Bill Depth")



penguins %>%
  ggplot(aes(x = species,
             y = bill_length_mm)) +
  geom_boxplot(staplewidth = 0.25) +
  theme_minimal() 

## comparing categorical variables

penguins %>%
  ggplot(aes(x = species, y = island)) +
  geom_count() +
  theme_minimal() +
  theme(
    axis.text.x = element_text(angle = 90)
  )

# looks like there were no gentoo penguins found on torgersen island, nor on dream


# numerical summaries

# median body mass (g) for each species

penguins %>%
  group_by(species) %>%
  summarise(med_mass = median(body_mass_g, na.rm = T))
