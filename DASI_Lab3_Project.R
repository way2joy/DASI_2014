qnorm(0.05)
pnorm(3.2,3,0.246,FALSE)
pnorm(1.73,0,1,FALSE)

qnorm(0.01)
(-qnorm(0.01)*300/40)^2

pnorm(30.69,32,4.31,FALSE)
(30.69-32)/(4.31/sqrt(36))
pnorm(1.823666,0,1,FALSE)

qnorm(0.95)
-qnorm(0.05)*4.31/sqrt(36)
32-1.181553
32+1.181553
1.644854*4.31/6

load(url("http://www.openintro.org/stat/data/ames.RData"))
str(ames)
dim(ames)
area <- ames$Gr.Liv.Area
price <- ames$SalePrice
summary(area)
hist(area)
1743-1126

samp0 <- sample(area, 50)
samp1 <- sample(area, 50)
mean(samp0)
mean(samp1)

sample_means50 <- rep(NA, 5000)
for (i in 1:5000) {
 samp <- sample(area, 50)
 sample_means50[i] <- mean(samp)
}
hist(sample_means50) 
hist(sample_means50, breaks = 25)


sample_means10 <- rep(NA, 5000)
sample_means100 <- rep(NA, 5000)
for (i in 1:5000) {
samp <- sample(area, 10)
sample_means10[i] <- mean(samp)
samp <- sample(area, 100)
sample_means100[i] <- mean(samp)
}

par(mfrow = c(3, 1))
xlimits = range(sample_means10)
hist(sample_means10, breaks = 20, xlim = xlimits)
hist(sample_means50, breaks = 20, xlim = xlimits)
hist(sample_means100, breaks = 20, xlim = xlimits)

par(mfrow = c(1, 1))
hist(price)


samp2 <- sample(price, 50)
samp3 <- sample(price, 50)
mean(samp2)
mean(samp3)

sample_means50 <- rep(NA, 5000)
for (i in 1:5000) {
  samp <- sample(price, 50)
  sample_means50[i] <- mean(samp)
}
hist(sample_means50) 
hist(sample_means50, breaks = 25)

sample_means150 <- rep(NA, 5000)
for (i in 1:5000) {
  samp <- sample(price, 150)
  sample_means150[i] <- mean(samp)
}
hist(sample_means150) 
hist(sample_means150, breaks = 25)

population <- ames$Gr.Liv.Area
samp <- sample(population, 60)
sample_mean <- mean(samp)


se <- sd(samp)/sqrt(60)
lower <- sample_mean - 1.96 * se
upper <- sample_mean + 1.96 * se
c(lower, upper)

mean(population)

qnorm(0.005)


samp_mean <- rep(NA, 50)
samp_sd <- rep(NA, 50)
n <- 60

for(i in 1:50) {
samp <- sample(population, n) # obtain a sample of size n = 60 from the population
samp_mean[i] <- mean(samp) # save sample mean in ith element of samp_mean
samp_sd[i] <- sd(samp) # save sample sd in ith element of samp_sd
}

lower <- samp_mean - 1.96 * samp_sd/sqrt(n)
upper <- samp_mean + 1.96 * samp_sd/sqrt(n)


c(lower[1], upper[1])
plot_ci(lower, upper, mean(population))


## 검정력 계산  


-1.96*2.5+130
1.96*2.5+130

a <- pnorm(135.1,140,2.5)
b <- pnorm(144.9,140,2.5,FALSE)
a+b

(125.1-140)/2.5
pnorm(-5.96)
(1)

a <- pnorm(125.1,140,2.5)
b <- pnorm(134.9,140,2.5,FALSE)
a+b


pnorm(9.51,10,4.65)
(0.09*0.9)/(0.9*0.02+0.09*0.9)
(0.9*0.02+0.09*0.9)
c <- c(-5,-4,-3,-2,-1,7,10,11,17,18)
d <- c(-11,-5,-3,3,-1,-1,-1,2,3,5,12)
summary(c)
summary(d)
sdc <- sqrt(sum((c-4)^2)/10)
sdd <- sqrt(sum((d+1)^2)/11)
sdc
sdd

qnorm(0.1)
((18*1.28)/4)^2

































