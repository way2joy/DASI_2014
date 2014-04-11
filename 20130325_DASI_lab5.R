source("http://bitly/dasi_inference")

paul = factor(c(rep("yes",8), rep("no",0)), levels = c("yes","no"))

paul

jane = factor(c(rep("yes",8), rep("no",3)), levels = c("yes","no"))

jane

inference(paul, est = "proportion", 
          type = "ht", method = "simulation", 
          success = "yes", null = 0.5,
          alternative = "greater")


back = factor(c(rep("correct",11), rep("incorrect",1)), 
              levels = c("correct","incorrect"))

back

inference(back, est = "proportion", 
          type = "ht", method = "simulation", 
          success = "correct", null = 0.1,
          alternative = "greater",
          nsim = 100)

load(url("http://www.openintro.org/stat/data/atheism.RData"))


us12 = subset(atheism, atheism$nationality == "United States" & 
                atheism$year ==  "2012")
dim(us12)
table(us12$response)
50/1002

inference(us12$response, est = "proportion", type = "ci", 
          method = "theoretical",
          success = "atheist")

0.0499-0.0364
1.96*0.0069




n <- 1000
p <- seq(0, 1, 0.01)
me <- 2 * sqrt(p * (1 - p)/n)
plot(me ~ p)

table(atheism$nationality)

spain = subset(atheism, atheism$nationality == "Spain" & 
                (atheism$year ==  "2012" | atheism$year ==  "2005") )
head(spain)
table(spain$year,spain$response)

inference(us12$response, est = "proportion", type = "ci", 
          method = "theoretical",
          success = "atheist")

inference(x = spain[spain$year == "2005",]$response, 
          y = spain[spain$year == "2012",]$response,
          est = "proportion", type = "ht", 
          method = "theoretical",
          success = "atheist",
          alternative = "less")

table(spain$year,spain$response)
dim(spain)
ppool <- (115+103)/2291
p1 <- 115/(115+1031)
p2 <- 103/(103+1042)
se <-sqrt((ppool*(1-ppool)/(115+1031))+((ppool*(1-ppool)/(103+1042))))
se
p_hat <- p1 - p2
p_hat
statistic <- (p_hat/se)
statistic
pnorm(statistic, lower.tail = FALSE)

us = subset(atheism, atheism$nationality == "United States" & 
                 (atheism$year ==  "2012" | atheism$year ==  "2005") )
head(us)
dim(us)
table(us$year,us$response)

ppool <- (10+50)/2291
p1 <- 10/(10+992)
p2 <- 50/(50+952)
se <-sqrt((ppool*(1-ppool)/(10+992))+((ppool*(1-ppool)/(50+952))))
se
p_hat <- p1 - p2
p_hat
statistic <- (p_hat/se)
statistic
pnorm(statistic, lower.tail = TRUE)

(1.96*0.5^2/0.01)^2























































