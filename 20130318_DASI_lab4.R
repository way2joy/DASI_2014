load(url("http://bit.ly/dasi_nc"))

dim(nc)
summary(nc)

gained_clean <- na.omit(nc$gained)

n <- length(gained_clean)
n

boot_means = rep(NA, 100)
for(i in 1:100) {
  boot_sample = sample(gained_clean, n, replace = TRUE)
  boot_means[i] = mean(boot_sample)
}

inference(nc$gained, type = "ci", method = "simulation", 
          conflevel = 0.9, est = "mean",
          boot_method = "perc")

inference(nc$gained, type = "ci", method = "simulation", 
          conflevel = 0.95, est = "mean",
          boot_method = "perc")


inference(nc$gained, type = "ci", method = "simulation", 
          conflevel = 0.95, est = "mean",
          boot_method = "se")


inference(nc$gained, type = "ci", method = "simulation", 
          conflevel = 0.95, est = "median",
          boot_method = "se")

inference(nc$gained, type = "ci", method = "simulation", 
          conflevel = 0.95, est = "median",
          boot_method = "perc")




inference(y = nc$weight, x = nc$habit, est = "mean", 
          type = "ht", null = 0,
          alternative = "twosided", 
          method = "theoretical")






inference(y = nc$weight, x = nc$habit, est = "mean", 
          type = "ht", null = 0,
          alternative = "twosided", 
          method = "theoretical", order = c("smoker","nonsmoker"))


inference(y = nc$weight, x = nc$habit, est = "mean", 
          type = "ci", null = 0,
          alternative = "twosided", 
          method = "theoretical", order = c("smoker","nonsmoker"))


by(nc$weight, nc$habit, var)
point <- 6.82873 - 7.1444273
point
summary(nc$habit)

margin <- 1.96*sqrt(2.306391/873 + 1.921494/126)
margin
point + margin
point - margin


str(nc)
plot(nc$mage)
summary(nc$mage)
boxplot(nc$mage)


by(nc$weight, nc$mage, mean)


str(gss)


fit <- aov(wordsum ~ class, data = gss)
summary(fit)
fit
names(fit)
fit$coefficients
fit$residuals
fit$rank
a <- gss$wordsum
a
pairwise.t.test(a,gss$class)


inference(y = gss$wordsum, x = gss$class, est = "mean", type = "ht",
          alternative = "greater", method = "theoretical")














































































