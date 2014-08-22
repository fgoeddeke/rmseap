shinyUI(navbarPage("RMSEA-P",
  tabPanel("Calculator",
    sidebarLayout(
      sidebarPanel(
        numericInput("n", "Sample size", 793),
        numericInput("chimeas", "Chi-Square of Measurement Model", 582.25),
        numericInput("dfmeas", "Degrees of Freedom in Measurement Model", 209),
        numericInput("chistr", "Chi-Square of Structural Model", 729.29),
        numericInput("dfstr", "Degrees of Freedom in Structural Model", 280),
        submitButton(text="Submit", icon=NULL)
      ),
        mainPanel(
         textOutput('sample'),
         textOutput('chimeasurement'),
         textOutput('dfmeasurement'),
         textOutput('chistructural'),
         textOutput('dfstructural'),
         textOutput('rmseap')
 
)
)
),
  tabPanel("Instructions",
           mainPanel("RMSEA-P is a measure of model fit in structural equations modeling that isolates the 
                     fit of the latent variables from the fit of the measurement model, making it superior to other fit measures.  You can calculate
                     RMSEA-P by simply entering the values for your model on the left, then click SUBMIT.  Your
model values and RMSEA value are displayed on the right side.  NOTE:  You will receive a NaN error value for RMSEA-P unless you enter correct and positive numerical values. 
Default values for one example are already provided, you should overwrite them with your own model values.
For reference, please see:
O'Boyle, E., & Williams, L. (2010). Decomposing Model Fit: Measurement vs. Theory in Organizational 
                     Research Using Latent Variables.  Journal of Applied Psychology, 96(1), 1-12."
             ))
)
)
