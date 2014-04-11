seoul <- read.csv("2011_seoul survey_family member.csv")
dim(seoul)
names(seoul)
expected_income <- seoul$Q28
age_groups <- seoul$DD2
summary(expect)
summary(age)
hist(age_groups)
hist(expected_income)
boxplot(age,expect)
table(expected_income, age_groups)
plot(table(age_groups, expected_income))

data <- data.frame(cbind(age_groups, expected_income))
plot(data)
str(data)

mean(data[age == 1,]$expect)
mean(data[age == 2,]$expect)
mean(data[age == 3,]$expect)
mean(data[age == 4,]$expect)
mean(data[age == 5,]$expect)
mean(data[age == 6,]$expect)

sd(data[age == 1,]$expect)
sd(data[age == 2,]$expect)
sd(data[age == 3,]$expect)
sd(data[age == 4,]$expect)
sd(data[age == 5,]$expect)
sd(data[age == 6,]$expect)

??tk_choose.files
file.choose
load(tk_choose.files())
load(file.choose())
names(seoul)
load(choose.files())


names(gss)

download.file(url = "http://bit.ly/dasi_project_template", destfile = "dasi_project_template.Rmd")


load(url("http://bit.ly/dasi_gss_data")
my.df <- gss[c('degree', 'sibs')]
print(summary(my.df))
library(ggplot2)
p <- ggplot(my.df, aes(x=degree,y=sibs)) + geom_boxplot( )
print(p)


write.csv(my.df[1:20,], 'gss_portion.txt')






data <- cbind(gss$degree,gss$incom16)
head(data)
dim(data)
names(gss)

     
     
     2*pt(0.5, df = 17, lower.tail = FALSE)
sqrt(3.4^2/18 + 2.7^2/18)
0.05/10





