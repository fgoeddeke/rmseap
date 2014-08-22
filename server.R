shinyServer(
    function(input, output) {
    #output$sample <- renderText({paste("Your sample size is: ", input$n)})
    #output$chimeasurement <- renderText({paste("Your Chi-Square Measurement Model is: ", input$chimeas)})
    #output$dfmeasurement <- renderText({paste("Your degrees of freedom in measurement model is: ", input$dfmeas)})
    #output$chistructural <- renderText({paste("Your Chi-Square Structural Model is: ", input$chistr)})
    #output$dfstructural <- renderText({paste("Your degrees of freedom in Structural Model is: ", input$dfstr)})
    output$rmseap <- renderText({paste("Your RMSEA-P value is: ", sqrt(((input$chistr-input$chimeas)-(input$dfstr-input$dfmeas))/((input$dfstr-input$dfmeas)*(input$n-1))))})
    }
)