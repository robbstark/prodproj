library(shiny)

shinyUI(pageWithSidebar(
    headerPanel("Diamond Price Estimator"),

    sidebarPanel(        
        h3('Estimate diamond Value:'),
        h5("Please enter the carat value of the diamond you are interested in:"),
        sliderInput('weight', 'Enter carat:',value = 2.5, min = 0, max = 5, step = 0.25,),
        br(""),
        h4("Results:"),
        strong("Your entered:"),
        verbatimTextOutput("weight"),
        strong("Average of prices near this mass (USD):"),
        verbatimTextOutput("mean"),
        strong("Maximum of prices near this mass (USD):"),
        verbatimTextOutput("max"),
        strong("Minimum of prices near this mass (USD)"),
        verbatimTextOutput("min")
        
    ),

    
    mainPanel(
        h3('Welcome to Diamond Price Estimator Tool'),
        p("This handy tool allows you to get a rough estimate of the value of a diamond you are looking to buy.  Simply use the slider bar to set the carat(mass) of the diamond and see how it compares to other diamonds with similar mass."),
        p("This tool will calculate the average, minimum and maximum prices of diamonds within -0.26 to +0.25 range of the mass value you enter."),
        strong("Step by step instructions"),
        tags$ul(
        tags$li("Set the mass/carat of the diamond you want to buy using the slider bar."),
        tags$li("Compare against the reported average, maximum, and minimum."),
        tags$li("If the reported price is outside of the min-max range you should be cautios."),
        tags$li("The price relative to the reported average gives you an idea of where this diamond falls."),
        tags$li("Keep in mind that at the high end of the scale average/min/max may be the same since only one sample value exists.")
    ))
))
