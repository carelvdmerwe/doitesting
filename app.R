library(shiny)
ui <- fluidPage(
  #*Input() functions,
  sliderInput(inputId = "num", label = "Choose your number", value = 25, min=1, max=100),
  #kan file input gebruik
  #*Output() functions
  plotOutput(outputId = "hist")
  )

server <- function(input,output) 
{
  
  output$hist <- renderPlot({hist(rnorm(input$num))})
}

shinyApp(ui=ui, server = server)