library(shiny) ## load shiny package
shinyUI( ## generate UI handler
  pageWithSidebar( ## create a page with a sidebar
  
    headerPanel("Developing Data Products Course Project - Predicting Your Remaining Life Expectancy"), ## create header panel with shiny app name and purpose 
  
    sidebarPanel( ## create a sidebar panel for user input
      h2('Enter Your Age'), ## add sidebar panel input description
      numericInput('Age', 'Age in Years', 21, min = 0, max = 119, step = 1), ## allow user to input age
      submitButton('Submit') ## create submit button
    ),
    mainPanel( ## create main panel to output prediction
        h2('Your Remaining Life Expectancy'), ## results text 1
        h3('(As an average between genders)'), ## results text 2
        h4('Your age entered:'), ## results text 3
        verbatimTextOutput("inputValue"), ## return inputs
        h4('Which results in a predicted remaining life expectancy in years of: '), ## results text 4
        verbatimTextOutput("prediction"), ## return prediction
        h1('You have no time to waste, get out there and live!!!')
    )
  )
)