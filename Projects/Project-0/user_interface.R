variables <- list(
  "Price: price in US dollars" = "price",
  "Carat: weight of the diamond" = "carat",
  "Cut: quality of the cut" = "cut",
  "Color: diamond color from D to J" = "color",
  "Clarity: How clear the diamond is" = "clarity",
  "X: length in mm" = "x",
  "Y: width in mm" = "y",
  "Z: depth in mm" = "z",
  "Depth: total depth percentage" = "depth",
  "Table: width of top of diamond relative to widest point"
)

user_interface <- tagList(
  # from htmltools, generates HTML tags
  h2("A very basic Shiny App"),
  
  p("This app demonstrates the split between the Muggle and Wizard worlds"),
  actionButton("go", "Go!"),
  selectInput("xvar", "Choose a x variable:",
              variables),
  selectInput("yvar", "Choose a y variable:",
              variables),
  plotOutput("main"),
  checkboxInput("angie", "Want a plumber?"),
  
  selectInput("xvar", "Set the x!", c("a", "b", "c"))
)
