#Bar plot using ggplot2 package
install.packages("ggplot2")

library('ggplot2')
install.packages("plotly")
library('plotly')
# Create data
data <- data.frame(
  name=c("A","B","C","D","E") ,  
  value=c(3,12,5,18,45),
  marks<-c(10,45,32,34,67)
)
# Barplot
plot<-ggplot(data, aes(x=marks)) 

plot+ geom_bar(stat = "identity")

plot+geom_line(stat = "identity")+ggtitle("example line plot")
plot+geom_histogram()

#plotly for barplot

plolty_bar_graph<-plotly::plot_ly(data=data,x=~name,y=~value,name="example bar plot",type="bar")
plolty_bar_graph


plotyl_ine_graph<-plotly::plot_ly(data=data,x=~marks,y=~value,name="example bar plot",type="scatter",mode="lines")

