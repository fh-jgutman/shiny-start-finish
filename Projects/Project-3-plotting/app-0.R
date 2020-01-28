library(shiny)
library(mosaicData)

source("./ui.R")

server <- function(input, output, session) {
  source("./server-reactives.R", local = TRUE)
  source("./server-output.R", local = TRUE)
}

options(shiny.reactlog=TRUE)
reactlogReset()

shinyApp(ui, server)
