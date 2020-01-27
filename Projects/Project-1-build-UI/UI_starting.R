# UI.R: UI definition

UI <- 
  fluidPage(
    h1("A Bag of Widgets"),
    checkboxInput("angie", "button_message"),
    p("Here are my widgets:"),
    sliderInput("fred", "Value:", min=0, max=100, value=55),
    selectInput("annie", "Pick an animal",
                choices = c("antelope", "bear", "chicken", "dove")),
    
    actionLink("click", "Click here"),
    checkboxInput("checks", "Some value", FALSE),
    checkboxGroupInput("icons", "Choose icons:",
                       choiceNames =
                         list(icon("calendar"), icon("bed"),
                              icon("cog"), icon("bug")),
                       choiceValues =
                         list("calendar", "bed", "cog", "bug")
    ),
    radioButtons("dist", "Distribution type:",
                 c("Normal" = "norm",
                   "Uniform" = "unif",
                   "Log-normal" = "lnorm",
                   "Exponential" = "exp")),
    passwordInput("pwd", "Enter password here")
    #textOutput("felix"),
    #plotOutput("fiona")
  )
