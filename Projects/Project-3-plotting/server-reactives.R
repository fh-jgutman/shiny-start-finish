Raw_data <- reactive({
  req(input$frame)
  switch(input$frame, 
         `datasets::mtcars` = datasets::mtcars,
         `datasets::iris` = datasets::iris,
         `mosaicData::CPS85` = mosaicData::CPS85,
  )
})

observeEvent(Raw_data(), {
  updateSelectInput(session, "response", 
                    choices = colnames(Raw_data()))
})

observeEvent(Raw_data(), {
  updateSelectInput(session, "explanatory",
                    choices = colnames(Raw_data()))
})

raw_data_subset <- reactive({
  req(input$response, input$explanatory)
  Raw_data()[,c(input$explanatory, input$response)]
})