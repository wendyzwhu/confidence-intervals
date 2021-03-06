library(shiny)

# first attempt at confidence interval app
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Confidence Intervals for a Normal Distribution"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      actionButton("action", label="Refresh"),
      sliderInput("cr",
                  "Coverage rate:",min = 0.01,max = 0.99,value = 0.75),
      sliderInput("trials",
                  "Number of samples:",min = 20,max = 200,value = 100),
      sliderInput("size",
                  "Size of sample:",min = 5,max = 500,value = 50),
      sliderInput("sd",
                  "Standard Deviation:",min = 0.1,max = 100,value = 2),
      sliderInput("mean",
                  "Mean:",min = -10,max = 10,value = 0)
    ),
    # Show a plot of the trials
    mainPanel(
      plotOutput("unknown.both.Plot"),
      plotOutput("unknown.mean.Plot"),
      br(),
      p("Code ",
        a("here", 
          href = "https://github.com/lawsonb/confidence-intervals", 
          target="_blank"))
    )
  )
))
