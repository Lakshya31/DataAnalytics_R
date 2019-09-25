#MLR
data1 <- read.csv('Advertising.csv')

data1

sales= data1[,5]
tv = data1[,2]
radio = data1[,3]
newspaper = data1[,4]

model <- lm(sales~TV+radio+newspaper,data=data1)

plot(x =tv+radio+newspaper, y =sales,main="LRPLOT", xlab="tv+radio+newspaper",ylab="sales",abline(model))