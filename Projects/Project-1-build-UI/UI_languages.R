# See Muggle.R for these definitions
UI <-
  #tagList(
  fluidPage(
    fluidRow(
      column(4, First,
                Second,
                Third),
      column(4, Fourth),
      column(2, Fifth)),
    title = "Fluid!"
    )
# No good reason to define these things in Muggle.R
# rather than here. But it helps keep in mind the distinction
# between Muggle code and Wizard code.
