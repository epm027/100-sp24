library(tidyverse)
library(cowplot)

x <- c(89.1,	87.1,	90.1,	97.4,	99.1,	100.0,	84.1,	89.4,
       92.3,	99.4,	95.2,	91.0,	90.0,	87.4,	89.0,	92.4)

p1 <- data.frame(x) %>%
  ggplot(aes(x = x)) +
  geom_boxplot(
    staplewidth = 0.3,
    fill = "#0097a7ff"
  ) +
  theme_minimal() +
  theme(
    axis.text.y = element_blank(),
    panel.grid.major.y = element_blank(),
    panel.grid.minor.y = element_blank()
  ) +
  ylim(c(-1, 1)) +
  xlab("scores") +
  coord_cartesian(xlim = c(84, 100))


p2 <- data.frame(x) %>%
  ggplot(aes(x = x)) +
  geom_histogram(
    breaks = seq(84, 100, by = 2),
    fill = "#0097a7ff",
    col = "white",
  ) +
  theme_minimal() +
  ylim(c(0, 5)) +
  scale_x_continuous(
    breaks = seq(84, 100, by = 2)
  ) +
  theme(
    panel.grid.minor.x = element_blank()
  ) +
  xlab("scores") +
  coord_cartesian(xlim = c(84, 100))


plot_grid(plotlist = list(p1, p2), 
          ncol = 1,
          align = "v")

# grid.arrange(p1, p2, ncol = 1)
