library(shiny)
shinyUI(navbarPage("Miles Per US Gallon Prediction",
              inverse = TRUE, collapsible = FALSE, fluid = TRUE,
              tabPanel("User Documentation",
                          includeHTML("userdoc.html")),
                #fluidRow(includeHTML("userdoc.html"))),
              tabPanel("Go Predict MPG !",style="overflow:hidden;",
                       sidebarLayout(
  sidebarPanel(
    strong("User Documentation"),
    p("You can use this application to predict the miles per gallon (MPG) of your vehicle."),
    p("You are required to select two numbers which are 
      (1) the horse power of your vehicle and 
      (2) the weight of your vehicle."),
    p("The weight of the vehicle is measured in the unit of 1000lb. For example, 3.5 represents 3500lb."),
    br(),
    sliderInput("hp","Select the horse power of your vehicle ", min=50, max=335,value=200, step=5),
    sliderInput("wt","Select the weight of your vehicle", min=1.5, max=5.4,value=2.7, step=0.1),
    submitButton("Submit")
  ),
  mainPanel(
    h3('Result of miles per gallon prediction'),
    br(),
    h4('Your entry of the vehicle horse power is'),
    verbatimTextOutput("ohp"),
    h4('Your entry of the vehicle weight is'),
    verbatimTextOutput("owt"),
    h4('The MPG prediction of your vehicle is'),
    verbatimTextOutput("prediction")
  )))
))