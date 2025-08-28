getwd()
setwd("~//Documents//Y2S1//PS//LABS//Lab 5")
getwd()

#01
#Import the dataset
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE, sep=",")
print(Delivery_Times)

#02
#Draw a histogram
hist(Delivery_Times$Delivery_Time,
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time(minutes)",
     ylab = "Frequency",
     breaks=seq(20, 70, by=6),
     right=FALSE)

#03
#The distribution of delivery times is right-skewed, with the majority of delivery times falling between 30 and 45 minutes. A few higher values (above 50 minutes) extend the tail to the right.

#04
cum_freq <- cumsum(table(cut(Delivery_Times$Delivery_Time, breaks=seq(20, 70, by=5), right = FALSE))) 
plot(seq(20, 65, by=5), cum_freq, type='o',
     main = "Cumulative Frequency Polygon(ogive) for Delivery Times",
     xlab="Delivery Time(minutes)",
     ylab="Cumulative Frequency",
     ylim=c(0, max(cum_freq)),
     pch=16)


