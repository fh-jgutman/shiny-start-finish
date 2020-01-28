ui <- fluidPage(
  selectInput("frame", "Data frame:", 
              choices = c("Choose data frame"= "", 
                          "datasets::mtcars", 
                          "datasets::iris", 
                          "mosaicData::CPS85"),
              selected = character()),
  selectInput("response", "Response var:", 
              # initial value
              choices = c("First select a dataset" = "")),
  selectInput("explanatory", "Explan var:",
              # initial value
              choices = c("First select a dataset" = "")),
  dataTableOutput("show_df"),
  plotOutput("graph_data"),
  verbatimTextOutput("regression_table"),
  htmlOutput("codebook")
)