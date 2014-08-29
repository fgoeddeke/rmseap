library(shiny)
source("rmseap.R")
shinyUI(navbarPage("RMSEA-P",
  tabPanel("Calculator",
    sidebarLayout(
      sidebarPanel(
        numericInput("n", "Sample size", 793),
        numericInput("chimeas", "Chi-Square of Measurement Model", 582.25),
        numericInput("dfmeas", "Degrees of Freedom in Measurement Model", 209),
        numericInput("chistr", "Chi-Square of Structural Model", 729.29),
        numericInput("dfstr", "Degrees of Freedom in Structural Model", 280)
      ),
        mainPanel(
         textOutput('rmseap'),
         textOutput('rmseapl'),
         textOutput('rmseapu')
))),
  tabPanel("Instructions",
           includeHTML("include.html")
)))
