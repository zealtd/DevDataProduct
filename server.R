mpgpred<-function(hp,wt)  37.22727-0.03177*hp-3.87783*wt

shinyServer(
  function(input, output) {
    output$ohp<-renderPrint({input$hp})
    output$owt<-renderPrint({input$wt})
    output$prediction<-renderPrint({mpgpred(input$hp,input$wt)})
  }
)
