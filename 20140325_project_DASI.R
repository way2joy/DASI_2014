library(ggplot2)
library(knitr)


seoul <- read.csv("2011_seoul survey_family member.csv")
dim(seoul)
names(seoul)
income <- seoul$Q28
age <- seoul$DD2
summary(income)
summary(age)

mydata <- cbind(income, age)
dim(mydata)

table(mydata[ ,1])


boxplot(income ~ age, data = mydata,
        main="boxplot for each age group", 
        xlab="age group", 
        ylab="expected retired income/month")

inference(y = as.factor(mydata[ ,1]), x = as.factor(mydata[ ,2]), 
          est = "proportion", 
          type = "ht",
          alternative = "greater", method = "theoretical")


inference(y = mydata[ ,1], x = as.factor(mydata[ ,2]), 
          est = "mean", 
          type = "ht",
          alternative = "greater", method = "theoretical")
