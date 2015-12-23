library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Developing Data Products Project"),
  
  sidebarLayout(
    sidebarPanel(
      textInput("name", label = "State your name, please"),
      selectInput("born", 
                  label = "You were born as",
                  choices = list ("Artificial Intelligence" = 1, "Alien" =2,
                              "Woman"=3, "Man"=4),
                  selected = 1),
      numericInput("x", label = "Enter a number to calculate it's factorial", value = 1, min= 1, max =100),
      helpText("What this website does is to get an image from the www folder depending on your input (how you were born). 
                Also, it uses the number you entered and provides you the factorial of that number.
                Example: If you entered 4, R server will multiple 4x3x2x1 in which case the result will be 24"),
      helpText("Btw, happy holidays and happy new year")
    ),
    
    mainPanel(
      br(), 
      imageOutput("preImage"),
      textOutput("name2"),
      br(),
      h5("Lets get back on track. As you may know the factorial function means to multiply a series of descending natural numbers."),
      textOutput("x2"),
      br(),
      h2(textOutput("factorialX"))
    )
  )
))
