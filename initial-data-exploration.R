library(tidyverse)
data <- read.csv ("./data/murders.csv")
head (data)
str(data)
summary(data)
hist(data$total)
hist(data$population / 10^6)
sapply(data, function(x) sum(is.na(x)))
boxplot(data$total)
boxplot(data$population /10^6)
plot(data$population /10^5, data$total)
table(data$abb, data$region)
abb <- data$abb
total <- data$total
ggplot(data, aes(x = abb, y = total, color = BLACK)) + geom_()

       