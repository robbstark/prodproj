library(ggplot2)
data(diamonds)

library(shiny)


shinyServer(
    function(input, output) {
        output$weight <- renderPrint({input$weight})
        output$mean <- renderPrint({mean(diamonds[diamonds$carat > input$weight-0.26 & diamonds$carat < input$weight+0.25,7]
)})
        output$max <- renderPrint({max(diamonds[diamonds$carat > input$weight-0.26 & diamonds$carat < input$weight+0.25,7])})
        output$min <- renderPrint({min(diamonds[diamonds$carat > input$weight-0.26 & diamonds$carat < input$weight+0.25,7])})
        
    }
)
