# n<- 100
# p<-0.5
# 
# x<-c(0:n)
# pr<-dbinom(x,n,p)


shinyServer(
  function(input, output) {
    output$barplot <- renderPlot({
      barplot(dbinom(c(0:input$n),input$n,input$p),space = NULL, ylab = "P(X=x)",xlab = "x",
              main="Binomial Probabilities",names.arg = as.character(c(0:input$n)))
     
    })
    
  }
)