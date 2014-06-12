library(shiny)
# Define UI for Showing CGPA calculation based on marks obtained !!!
shinyUI(
    pageWithSidebar(
    # Application title
    headerPanel("CGPA calculator and predictor"),
    
    # Sidebar with controls to enter the marks and mainpanel display the results
    sidebarPanel(
        numericInput('marks', 'Please enter your marks', 70, min = 50, max = 100, step = 1),
        submitButton('Submit')   
    ),
    mainPanel(
        h3('Cumulative Grade Point Average (CGPA) value'),
        h4('You entered '),
        verbatimTextOutput("inputValue"),
        h4('Your CGPA grades and prediction '),
        verbatimTextOutput("prediction")
    )
  )
)
