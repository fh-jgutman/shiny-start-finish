library(ggplot2)

output$show_df <- renderDataTable({
  raw_data_subset()},
  options = list(pageLength = 5)
)

output$graph_data <- renderPlot({
  req(input$explanatory, input$response)
  if (input$explanatory != input$response) {
  
    x <- rlang::sym(input$explanatory)
    y <- rlang::sym(input$response)
    
    ggplot(data = raw_data_subset(),
           aes(x = !!x,
               y = !!y)) +
        geom_point() +
        geom_smooth(method = "lm",
                    se = FALSE,
                    linetype = "dashed")
  }
})

output$regression_table <- renderPrint({
  req(input$explanatory, input$response)
  
  if (input$explanatory != input$response) {
    lm_formula <- as.formula(paste0(input$response, " ~ ", input$explanatory))
    model <- lm(lm_formula, data = Raw_data())
    print(summary(model))
  }
})

output$codebook <- renderText({
  req(input$frame)
  components <- unlist(strsplit(input$frame, "::"))
  package <- components[1]
  data_name <- components[2]
  db <- tools::Rd_db(package)
  doc_contents <- db[[paste0(data_name, ".Rd")]]
  paste(capture.output(tools::Rd2HTML(doc_contents)),
        collapse = "\n")
})