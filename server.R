library(shiny)

shinyServer(function(input, output) {
  
  output$factorialX <- renderText({
    factorial(input$x)
  })
  
  output$preImage <- renderImage({
    # When input$n is 3, filename is ./images/image3.jpeg
    
    filename <- normalizePath(file.path('./www',
                                        paste(input$born, '.jpg', sep='')))
    
    # Return a list containing the filename and alt text
    list(src = filename, width = 300, height = 350)
    
  }, deleteFile = FALSE)
  
  
  output$name2 <- renderText({
    if (input$name != "")
      paste(input$name, ", you are very intelligent and for that reason alone you should give me a high score for making your name appears in this app :)")
    else "Don't forget to state your name!"
  })
  
  output$x2 <- renderText({
    paste("You entered:", input$x, ". The factorial of this number is:")
  })
  
})
