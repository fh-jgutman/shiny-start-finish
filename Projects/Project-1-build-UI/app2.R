library(shiny)

ui <- tagList(
  h1("A Bag of Widgets"),
  p("Here are my widgets:"),
  sliderInput("fred", "Value:", 
              min=0, max=100, value=55),
  selectInput("annie", "Pick an animal",
              choices = c("antelope", "bear",
                          "chicken", "dove")),
  textOutput("felix"),
  plotOutput("fiona")
)

server <- function(input, output, session) {
  output$felix <- renderText(input$fred)
  output$fiona <- renderPlot(plot(1:100, 1:100))
}

shinyApp(ui, server)
