# These are components of the reactive logic

output$main <- renderPlot(
  muggle_plot(as.name(input$xvar), as.name(input$yvar))
)

# renderText and renderPlot returns a function that takes no inputs
# value of output assignments needs to be a shiny render function
output$button_message <- renderText(
  if (input$go > 2) {
    paste("You have pressed the button", input$go, "times.")
  } else {
    "Press the button at least 3 times"
  }
)