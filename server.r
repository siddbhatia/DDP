library(shiny)
pr<-function(Class,Sex,Age){
  data(Titanic)
  df<-as.data.frame(Titanic)
  save<-df[df$Class==Class&df$Sex==Sex&df$Age==Age&df$Survived=="Yes","Freq"]
  tot<- save +df[df$Class==Class&df$Sex==Sex&df$Age==Age&df$Survived=="No","Freq"]
  100*save/tot
}
shinyServer(
  function(input, output) {
    output$oClass <- renderPrint({input$Class})
    output$oSex <- renderPrint({input$Sex})
    output$oAge <- renderPrint({input$Age})
    output$survival <- renderPrint({pr(input$Class,input$Sex,input$Age)})
  }
)