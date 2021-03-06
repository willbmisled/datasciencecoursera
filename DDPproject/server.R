library(shiny)

#get the data
mnka<-read.csv('FJmnka.csv')


#start Shiny app
shinyServer(
  function(input, output) {
    output$oSpp <- renderPrint({input$Spp})
    output$plotSpp <- renderPlot({plot(x=mnka$Order,y=mnka[,input$Spp],type='l',col='blue',
      lwd=2,ylab='Animals per 0.56 ha. Grid',xlab='Month')
    })
  }
) 
