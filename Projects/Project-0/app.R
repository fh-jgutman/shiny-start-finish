# A very basic shiny app
library(shiny)

source("muggle.R")
source("user_interface.R") # defines user_interface (HTML layouts)
 

# Set up the the connection to the  Wizard World
# usually called server
reactive_logic <- function(input, output, session) {
  # takes input, output, and session, passes those inputs into reactive logic script and sources it
  # separates complexity of defining the reactive logic into its own file
  source("reactive_logic.R", local = TRUE) 
}

# Invoke the app!
shinyApp(user_interface,  reactive_logic)
