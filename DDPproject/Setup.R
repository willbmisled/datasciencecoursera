
setwd("./DDPproject") #switch to project subdirectory
require("shiny")
require("shinyapps")
runApp()

shinyapps::setAccountInfo(name='willbmisled', token='F2EE833486D9597B1FC24B4F18B64346', secret='pVbuFo0aOZOGoEL+QuWBhYuR13VEER7pZX7Ycg+q')
deployApp()




####test stuff below

Spp<-c('AB','ME','OL')

Line <- gvisLineChart(mnka, xvar="Order", yvar=Spp,
  options=list(hAxis.logScale=TRUE,
    title="Fray Jorge Small Mammal Populations",
    titleTextStyle="{color:'blue',fontName:'Courier',fontSize:16}",
    backgroundColor="#D3D3D3",
    hAxis="{title:'Month', titleTextStyle:{color:'blue'}}",
    vAxis="{title:'Animals per 0.56 ha. Grid', titleTextStyle:{color:'blue'}}",
    width=700,height=300))


plot(Line)



plot(x=mnka$Order,y=mnka[,Spp[1]],type='l',lwd=2,col='blue',xlab='Month')


#rCharts
library(rCharts)

m1<-mPlot(x='Order',y=Spp,type='Line',data=mnka)
m1$save('m1.html',cdn=T)
cat('<iframe src="m1.html" width=100%, height=600><.iframe>')


mPlot(x='Order',y=Spp,type='Line',data=mnka)






#########old

df1 <- data.frame(country=c("US", "GB", "BR"),
                    val1=c(1,3,4), val2=c(23,12,32))
Line1 <- gvisLineChart(df1, xvar="country", yvar=c("val1","val2"),
                         options=list(
                           title="Hello World",
                           titleTextStyle="{color:'red',fontName:'Courier',fontSize:16}",
                           backgroundColor="#D3D3D3",
                           vAxis="{gridlines:{color:'red', count:3}}",
                           hAxis="{title:'Country', titleTextStyle:{color:'blue'}}",
                           series="[{color:'green', targetAxisIndex: 0},{color: 'orange',targetAxisIndex:1}]",
                           vAxes="[{title:'val1'}, {title:'val2'}]",
                           legend="bottom",
                           curveType="function",
                           width=500,
                           height=300,vAxis.logScale=TRUE))
                           
plot(Line1)



load(url('https://raw.github.com/jhollist/hkm2014/master/data/hkm2014Data.rda'))

a<-read.csv(url('https://raw.github.com/willbmisled/datasciencecoursera/master/DDPproject/FJmnka.csv'))

read.csv('https://github.com/willbmisled/datasciencecoursera/blob/master/DDPproject/FJmnka.csv')

load(url('https://raw.github.com/jhollist/hkm2014/master/data/hkm2014Data.rda'))
