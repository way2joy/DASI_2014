install.packages("DAAG")
library(DAAG)
??DAAG
library(help="DAAG")
data(allbacks)
str(allbacks)
book_mlr <- lm(weight ~ volume + cover, data = allbacks)
summary(book_mlr)

load(url("http://www.openintro.org/stat/data/evals.RData"))
str(evals)
dim(evals)

summary(evals$score)
boxplot(evals$score)
sum(evals$score < 3)

plot(evals$score ~ evals$bty_avg)

?jitter

plot(jitter(evals$score) ~ evals$bty_avg)
plot(evals$score ~ jitter(evals$bty_avg))

m_bty <- lm(score ~ bty_avg, data = evals)
abline(m_bty)
summary(m_bty)

plot(m_bty$residuals ~ evals$bty_avg)
hist(m_bty$residuals)
qqnorm(m_bty$residuals)
qqline(m_bty$residuals)
plot(m_bty$residuals ~ m_bty$fitted)
plot(abs(m_bty$residuals) ~ m_bty$fitted)



plot(evals$bty_avg ~ evals$bty_f1lower)
cor(evals$bty_avg, evals$bty_f1lower)

plot(evals[, 13:19])

m_bty_gen <- lm(score ~ bty_avg + gender, data = evals)
summary(m_bty_gen)

anova(m_bty_gen)


plot(m_bty_gen$residuals ~ evals$bty_avg)

hist(m_bty_gen$residuals)

qqnorm(m_bty_gen$residuals)

qqline(m_bty_gen$residuals)

plot(m_bty_gen$residuals ~ m_bty_gen$fitted)

plot(abs(m_bty_gen$residuals) ~ m_bty_gen$fitted)


multiLines(m_bty_gen)
multiLines(book_mlr)


m_bty_rank <- lm(score ~ bty_avg + rank, data = evals)
summary(m_bty_rank)

anova(m_bty_rank)
multiLines(m_bty_rank)

str(evals)

m_bty_ethni <- lm(score ~ bty_avg + ethnicity, data = evals)
summary(m_bty_ethni)

anova(m_bty_ethni)
multiLines(m_bty_ethni)

m_full <- lm(score ~ rank + ethnicity + gender + 
               language + age + cls_perc_eval
             + cls_students + cls_level + cls_profs + 
               cls_credits + bty_avg, data = evals)
summary(m_full)
anova(m_full)





































































































































































