library(shiny)
library(bslib)

ui <- fluidPage(
  theme = bs_theme(version = 4, bootswatch = "minty"),
  
  titlePanel("Just a simple shiny app"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("obs", "Number of observations:", min = 10, max = 500, value = 100)
    ),
    
    mainPanel(plotOutput("distPlot"))
  )
)