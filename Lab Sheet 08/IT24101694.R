setwd("C:\\Users\\dular\\Desktop\\PS\\Lab8\\IT24101694")
dara<-read.table("Exercise - LaptopsWeights.txt",header = TRUE)
fix(data)
getwd()
weights_data <- data<-read.table("Exercise - LaptopsWeights.txt", header=TRUE)
weights <- weights_data$Weight

#Population Mean
pop_mean <- mean(weights)
#population Standard Deviation
pop_sd <- sd(weights)

pop_mean
pop_sd

#First create null vectors to store sample data sets.
samples<-c()
n<-c()

for(i in 1:25){
  s <- sample(weights, 6, replace = TRUE)
  samples <- cbind(samples,s)
  n <- c(n,paste('S',i))
}

#Assign column names for each sample created.Names have stored earlier under "n" variable 
colnames(samples)=n
s.means<-apply(samples,2,mean)
s.sd<- apply(samples,2,sd)

#Q3
samplemean <- mean(s.means)
samplesd   <- sd(s.means)

truemn = pop_mean/6
truesd = pop_sd/6

