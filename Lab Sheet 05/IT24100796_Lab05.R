setwd("C:\\Users\\IT24100796\\Desktop\\Lab05")
Delivery_Times <- read.table("Exercise - Lab 05.txt", header=TRUE, sep= " ")
fix(Delivery_Times)
attach(Delivery_Times)

histogram <- hist(Delivery_Time_.minutes.,main ="Histogram for delivery times",breaks=seq(20,70,length =10), right = TRUE)


breaks <- round(histogram$breaks)
freq <- histogram$counts
mids <- histogram$mids
cum.freq <- cumsum(freq)
new <-c()
for(i in 1:length(breaks)) {
  if(i == 1) {
    new[i] = 0
  } else {
    new[i] = cum.freq[i - 1]
  }
}

plot(breaks, new, type = 'l', main="Cumalative Frequency Polygon for Delivery time", xlab = "Cumulative Frequency", ylab = "Delivery time", ylim= c(0,max(cum.freq)))
cbind(Upper = breaks, CumFreq = new)