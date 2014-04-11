source("http://www.openintro.org/stat/data/present.R")
present
present$girls
names(present)
plot(present$year,present$girls)
plot(present$year,present$boys)
plot(present$year,present$girls+present$boys)
present$total <- present$girls + present$boys
present$boyrate <- present$boys / present$total
plot(present$year,present$boyrate)
range(present$boyrate)
present$boytogirl <- present$boys / present$girls
plot(present$year,present$boytogirl)
present$abs <- abs(present$boys - present$girls)
plot(present$year,present$abs)
present

source("http://www.openintro.org/stat/data/cdc.R")
names(cdc)
str(cdc)
head(cdc)
tail(cdc)
dim(cdc)


table(cdc$gender)
table(cdc$genhlth)
4657/20000
smk <- cdc[,c(4,9)]

library(vcd)
mosaicplot(~ gender+ smoke100, data = cdc, col = TRUE)
?mosaicplot

names(cdc)
head(cdc)
under23 <- cdc$age < 23
cdc.23 <- cdc[under23,]
sum(cdc.23$smoke100)
cdc$bmi <- (cdc$weight*0.45359737)/((cdc$height*2.54/100)^2)
?boxplot
boxplot(bmi ~ genhlth, data = cdc)

plot(cdc$weight,cdc$wtdesire)

a <- 1:10
b <- choose(10,a)*0.07^a*0.93^(10-a)
b
sum(b)

c <- 0.055*0.99 + 0.945*0.005
d <- 0.055*0.99
d/c

sum(dbinom(50:160, 245, 0.28))
1-pnorm(50,0.28*160,sqrt(160*0.28*0.72))

load(url("http://www.openintro.org/stat/data/kobe.RData"))
head(kobe)
kobe$basket
dim(kobe)



i <- 1:133
id <- seq(1:133)
c <- 0

for (a in i) {
  if(kobe$basket[a] == "H") {
    id[a] <- 1
  }
  if(kobe$basket[a] == "M") {
    id[a] <- 0
  }
}

i <- 1:133
id2 <- seq(1:133)
c <- 0

for (a in i) {
  if(kobe$basket[a] == "H") {
    id2[a] <- 1
    c <- c + 1
    }
  if(kobe$basket[a] == "M") {
       id2[a] <- 0
       print(a)
       print(c)
       if(a >= 2) {
         if(kobe$basket[a-1] == "H") {
           b <- a - c
           d <- a - 1
           id2[a] <- sum(id2[b:d])
           c <- 0
         }
         if (kobe$basket[a-1] == "M") {
          id2[a] <- 0
          c <- 0
         }
       }
    }
}

id

id2

kobe$id2 <- id2
head(kobe)
data <- kobe[kobe$basket == "M",7]
plot(data)
barplot(data)
boxplot(data)

sum(id)
e <- 0
for (a in 1:132) {
  if(id[a]==1 & id[a+1] ==1) {
    e <- e + 1 
  }
}
e/sum(id)
e

## simulation

basket <- sample(c("H","M"),133, replace = TRUE)
basket

i <- 1:133
id2 <- seq(1:133)
c <- 0

for (a in i) {
  if(basket[a] == "H") {
    id2[a] <- 1
    c <- c + 1
  }
  if(basket[a] == "M") {
    id2[a] <- 0
    print(a)
    print(c)
    if(a >= 2) {
      if(basket[a-1] == "H") {
        b <- a - c
        d <- a - 1
        id2[a] <- sum(id2[b:d])
        c <- 0
      }
      if (basket[a-1] == "M") {
        id2[a] <- 0
        c <- 0
      }
    }
  }
}

id

id2

sim <- cbind(basket,id2)
head(sim)
sim.M <- sim[basket == "M",2]
sim.M
boxplot(as.numeric(sim.M))

load(url("http://bit.ly/dasi_gss_data"))
load(url("http://bit.ly/dasi_anes_data"))































































