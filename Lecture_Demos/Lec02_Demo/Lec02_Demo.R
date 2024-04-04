## PLEASE KEEP IN MIND:
## This is only a partial snippet of the code from lecture.
## During lecture, we changed around a lot of the code,
## to demonstrate in real-time the effect of these changes.
## Please do not try to rely solely on the versions of the 
## lecture demos that get posted to the website - 
## you should plan on attending lecture, and following along

library(tidyverse)
library(reshape2)
enrollments <- read.csv("data/enrollments.csv")

# enrollments %>% View()

# c(1, 2, 3) %>% sum() # equiv to sum(c(1, 2, 3))

enrollments_molten <- enrollments %>% 
  melt(
    id.vars = c("Course", "Title"),
    variable.name = "Quarter",
    value.name = "Enrollment"
  )


enrollments_molten %>% 
  mutate(
    Quarter = factor(Quarter,
                     ordered = T,
                     levels = c("W22", "S22", "M22", "F22",
                                "W23", "S23", "M23", "F23"))
  ) %>%
  ggplot(aes(x = Quarter, 
             y = Enrollment,
             group = Course)) +
  geom_line(aes(colour = Course)) +
  geom_point(aes(colour = Course))

enrollments_molten$Quarter

enrollments_molten %>%
  group_by(
    Quarter
  ) %>%
  summarise(
    tot_enrollment = sum(Enrollment, na.rm = T)
  )

