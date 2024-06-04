library(shiny)
library(tidyverse)
library(bslib)

# Define UI for application that draws a histogram
ui <- page_sidebar(
  title = "Lecture 19, Demos",
  sidebar = sidebar(
    tabsetPanel(
      tabPanel(
        "Demo 1",
        h6(
          "Fit a polynomial of specified degree to the data"
        ),
        sliderInput("degree",
                    "Degree of Polynomial",
                    min = 1,
                    max = 19,
                    value = 1),
        helpText(
          "This slider controls the number order of the polynomial
          to be fit."
        )
      ),
      tabPanel(
        "Demo 2",
        h6(
          "Gaussian KDE"
        ),
        sliderInput("bw",
                    "Bandwidth",
                    min = 0.01,
                    max = 2,
                    step = 0.05,
                    value = 0.02),
        helpText(
          "This slider controls the value of the smoothing parameter."
        )
      )
    )
    ),
    tabsetPanel(
      tabPanel(
        "Demo 1",
        card(
          card_header("Plot with Fit"),
          plotOutput("distPlot", width = 700, height = 700),
        )
      ),
      tabPanel(
        "Demo 2",
        card(
          card_header("Plot with Fit"),
          plotOutput("distPlot2", width = 700, height = 700),
        )
      )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  output$distPlot <- renderPlot({
    set.seed(123)
    
    library(tidyverse)
    set.seed(123)
    
    x <- rnorm(25, 2)
    y <- 0.5 * x + rnorm(25, 0, 1)
    
    data.frame(x = x, y = y) %>%
      ggplot(aes(x = x, y = y)) + 
      geom_point(size = 3) +
      theme_minimal(base_size = 18) +
      geom_smooth(formula = y ~ poly(x, input$degree),
                  method = "lm",
                  se = F,
                  col = "blue",
                  linewidth = 1.5,
                  n = 150) +
      ggtitle(
        "Scatterplot of X and Y",
        subtitle = "With Poylnomial Fit")
    
  })
  
  output$distPlot2 <- renderPlot({
    set.seed(123)
    x <- rnorm(10)
    
    data.frame(x, y = rep(0, length(x))) %>%
      ggplot(aes(x = x)) +
      geom_point(aes(x = x, y = y),
                 size = 5) +
      stat_density(
        geom = "line",
        kernel = "gaussian",
        linewidth = 1,
        bw = input$bw,
        col = "blue"
      ) +
      theme_minimal(base_size = 18) +
      ggtitle("Gaussian KDE")
  })
}

# Run the application 
shinyApp(ui = ui, server = server)
