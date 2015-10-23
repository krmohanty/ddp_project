shinyUI(pageWithSidebar(
  headerPanel("Normal Approximation to Binomial Distribution"
              
              ),
  #h4('X ~ Bin(n,p)'),
  sidebarPanel(

    numericInput('n', 'n=',10,min = 0,max=1000,step = 5),
    numericInput('p', 'p=',0.5,min = 0,max=1,step = 0.01),
    submitButton('Submit')
  ),
  mainPanel(
    p("X ~ Bin(n,p) , where n is the number of independent yes/no events and p is the probability of success.X is the number of successes.
      Try different values of n and/or p to render the probability mass function (P(X=x)) plot. Notice how larger values of n makes the plot looks more like a Bell curve. Hence for larger values of n, a binomial distribution can be approximated to a normal distribution i.e X ~ N(np,np(1-p))."),
    plotOutput('barplot')
  )
))
