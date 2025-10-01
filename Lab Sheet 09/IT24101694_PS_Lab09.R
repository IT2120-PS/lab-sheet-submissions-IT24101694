setwd("//Users//Dulara//Downloads//IT24101694_PS_Lab09")
getwd()

#1
times <- c(44, 47, 45, 46, 43, 45, 44, 48, 46, 47, 45, 46, 44, 45, 47, 46, 45, 44, 46, 47, 45, 46, 44, 45, 46)

#2
t.test(times, mu = 46, alternative = "less")
