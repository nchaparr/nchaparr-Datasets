setwd("C:/Program Files/R/Datasets/Chapter08")
install.packages("arules")
library(arules)
groceries<-read.transactions("groceries.csv", sep=",")
summary(groceries)
inspect(groceries[1:5])
itemFrequencyPlot(groceries, support=0.1)
itemFrequencyPlot(groceries, topN=20)
install.packages("apriori")
groceryrules<-apriori(groceries,parameter=list(support=.006, confidence=0.25, minlen=2))
inspect(sort(groceryrules, by="lift")[1:20]

        
        