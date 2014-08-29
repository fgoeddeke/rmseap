library(shiny)
source('rmseap.R')
shinyServer(
    function(input, output) {
    output$rmseap <- renderText({
    rmsea(input$n, input$dfstr, input$dfmeas, input$chistr, input$chimeas)
    paste("Your RMSEA-P value is: ", rmseap)})
    output$rmseapl <- renderText({
    rmsea(input$n, input$dfstr, input$dfmeas, input$chistr, input$chimeas)
    paste("Your RMSEA-P 90% C.I.Lower limit is: ", rmseapl)})
    output$rmseapu <- renderText({
    rmsea(input$n, input$dfstr, input$dfmeas, input$chistr, input$chimeas)
    paste("Your RMSEA-P 90% C.I. Upper limit is: ", rmseapu)})
    }
)