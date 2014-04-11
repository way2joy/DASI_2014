load(url("http://www.openintro.org/stat/data/mlb11.RData"))
fix(mlb11)
names(mlb11)
plot(runs ~ bat_avg, data=mlb11)
str(mlb11)
boxplot(runs ~ new_onbase, data=mlb11)

plot(runs ~ at_bats, data=mlb11)

cor(mlb11$runs, mlb11$at_bats)

boxplot(runs ~ at_bats, data=mlb11)

plot_ss(x = mlb11$at_bats, y = mlb11$runs)


plot_ss(x = mlb11$at_bats, y = mlb11$runs, showSquares = TRUE)


m1 <- lm(runs ~ at_bats, data = mlb11)
summary(m1)

m2 <- lm(runs ~ homeruns, data = mlb11)
summary(m2)
plot(m2)


plot(mlb11$runs ~ mlb11$at_bats)
abline(m1)

415.2389+1.8345*5578
10648-5578

m1
-2789+0.6305*5578
mlb11[mlb11$at_bats == 5579,2]
mlb11$at_bats
727-713


plot(m1$residuals ~ mlb11$at_bats)
abline(h = 0, lty = 3)

hist(m1$residuals)

qqnorm(m1$residuals)
qqline(m1$residuals) # adds diagonal line to the normal prob plot

m5 <- lm(runs ~ at_bats, data = mlb11)
m6 <- lm(runs ~ hits, data = mlb11)
m7 <- lm(runs ~ wins, data = mlb11)
m8 <- lm(runs ~ bat_avg, data = mlb11)
summary(m5)
summary(m6)
summary(m7)
summary(m8)


m9 <- lm(runs ~ new_onbase, data = mlb11)
m10 <- lm(runs ~ new_slug, data = mlb11)
m11 <- lm(runs ~ new_obs, data = mlb11)
summary(m9)
summary(m10)
summary(m11)




























































































































































