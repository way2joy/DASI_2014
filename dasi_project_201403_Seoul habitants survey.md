<!-- Make sure that the knitr package is installed and loaded. -->
<!-- For more info on the package options see http://yihui.name/knitr/options -->

<!-- Replace below with the title of your project -->

### The expected income level after retirement and age groups.

__Research Question__ : Is there any difference in expected income level after retirement among different age groups living in metropolitan Seoul area?


[Data download here(.RData)](https://drive.google.com/file/d/0By_uRJx10HlgVXEtaVhjRE9RMG8/edit?usp=sharing)

[Data download here(Google fusion table)](https://drive.google.com/file/d/0By_uRJx10HlgVXEtaVhjRE9RMG8/edit?usp=sharing)

[Data codebook download here](https://docs.google.com/document/d/18Qmyv8tloavUINEsG2jrvMhue2KDDm2lRQpJSByzJSo/edit?usp=sharing)






<!-- In the remainder of the document, add R code chunks as needed -->

### Introduction:

In the way of searching what item is suitable for DASI project, I found the offical public data service of Seoul and they gathered every year the survey data with great amount.

while I reviewed the questionaire, I saw a question about how is _appropriate_ for your income after retirement. 

for me this question was very interesting. when I was studying at the college, my economics professor asked us whose time is more valuable between you and me?

then I strongly said, "without a doubt, it's me. because what I will be is uncertain, so the unrealized wealth could reach countless amounts." because I was so serious about my opinion, my professor just laughed.

Young guys generally tend to have ambitious dream, I would like to find out that through this data.

we can see the difference in expected income level after retirement between the age groups, such as between younger generations between 20 to 40 and the elderly generations over 60, both of whom are currently living in Metropolitan Seoul area.

### Data:

These data are gathered through market survey by Seoul Metropolitan Administration Head Quarter.
They outsourced this survey to the professional marketing research company listed below.
and they conducted this survey in 2011.
most of the data are surveyed by face to face interviews.

The sample was randomly seleted from the population of interest without any assignment, so it's an observational study. And, expected income after retirement is a categorical variables according to the analysis below.

This data set was not designed to experiments. so they could not used for the causal links with confidence.


__1. Research institutions__

   - Seoul Metropolitan Administration HQ 
     (Information Planning Division)

__2. Performing institutions (in Korea)__
   1) World Research Inc. (02) 583-2482 
   2) Millward Brown Media Research Inc. (02) 3488-2784

__3. Main Features of Seoul survey.__

   1) Every year , Seoul conducts "Seoul Survey 
(Seoul City policy indicators survey).

   2) This survey will be used as the basis for policy-making.
   
   3) This statistical survey is based on Article 18 of the Statistics Act approved by the government statistics office , and the responses are not used for except the purposes designated according to Article 33 of the Statistics Act of Korea. Personal secret would be strictly protected.

   4) This survey is for more than 15 years old of All household 
members without exception living in seoul

__4. Data link__

  I retrived my dataset from this official site of [Seoul's open public data square](http://data.seoul.go.kr). but I couldn't pinpoint the exact URL of the page I had got this dataset. 
  
  If you want to access to that, you should have to make your ID first and after that, do a lot of things such as searching in Korean etc.
  
  because we just started public data service, It might be difficult to get into account about servicing for foreigners, I think.
  
  but for capturing the reliability of my dataset, I will link the captured image of the [exact page of my dataset](https://drive.google.com/file/d/0By_uRJx10HlgM0wyUnA0bzRESzQ/edit?usp=sharing)
  

### Exploratory data analysis:

the expected income after retirement(mydata$income) has 7 levels and the age groups(mydata$age) has 6 levels respectively.

1) income/month (Categorical variable)
   1. Less than 500,000won (as of today's exchange rate : $473)
   2. between 500,000 and 1,000,000won  ($473 - $946)
   3. between 1,000,000 and 2,000,000won ($946 - $1,892)
   4. between 2,000,000 and 3,000,000won ($1,892 - $2,838)
   5. between 3,000,000 and 4,000,000won ($2,838 - $3,784)
   6. between 4,000,000 and 5,000,000won ($3,784 - $4,730)
   7. over 5,000,000won                  ($4,730 -       )
   9. Do not know / no answer
   
2) Age group (Categorical Variable)
   1. 10 ~ 19 years
   2. 20 ~ 29 years
   3. 30 ~ 39 years
   4. 40 ~ 49 years
   5. 50 ~ 59 years
   6. over 60 years


```r
income <- seoul$Q28
age <- seoul$DD2
mydata <- cbind(income, age)
```


Total sample size is 45,605. and the counting unit is family member, individuals

- 20,000 households randomly selected by the survey company are surveyed 

- but current data is gathered to the family members individually. so the total number of cases could reach 45,604. 

- and for your convenicence, the total number of citizens reside in Seoul is over 10 millions


```r
dim(mydata)
```

```
## [1] 45605     2
```

```r
head(mydata, n = 10)
```

```
##       income age
##  [1,]      7   4
##  [2,]      3   4
##  [3,]      3   6
##  [4,]      3   5
##  [5,]      7   5
##  [6,]      3   5
##  [7,]      3   2
##  [8,]      7   2
##  [9,]      3   2
## [10,]      7   4
```

```r
summary(mydata)
```

```
##      income          age      
##  Min.   :1.00   Min.   :1.00  
##  1st Qu.:3.00   1st Qu.:3.00  
##  Median :4.00   Median :4.00  
##  Mean   :4.63   Mean   :3.81  
##  3rd Qu.:7.00   3rd Qu.:5.00  
##  Max.   :7.00   Max.   :6.00
```


I can find some negative relation between income and age through boxploting.



```r
boxplot(income ~ age, data = mydata, main = "boxplot for each age group", xlab = "age group", 
    ylab = "expected income/month after retirement")
```

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4.png) 





### Inference:


1. Choosing Inference method

   1) the dataset has two categorical variables with multiple levels respectively. so, I tried the chisquare indepence test.
   
   2) but both of the variables are categorical with ordered levels, plus for curiousity and comparison purpose, I also put the dataset into ANOVA. and figured the difference out between them.

2. Condition checking passed.

   1) Independence : random sample size is less than 10% of population, the citizens of Seoul. and each data serve to only one segment.
   
   2) Sample size : each of the level has more than 5 sample.
   
3. Hypothesis setting

  1) H_null : agegroups and the expected income level after retirement are $indpendent$
  
  2) H_alternative : agegroups and the expected income level after retirement are $dependent$


```r
source("inference.R")
inference(y = as.factor(mydata[, 1]), x = as.factor(mydata[, 2]), est = "proportion", 
    type = "ht", alternative = "greater", method = "theoretical")
```

```
## Warning: package 'BHH2' was built under R version 3.0.3
```

```
## Response variable: categorical, Explanatory variable: categorical
## Chi-square test of independence
## 
## Summary statistics:
##      x
## y         1     2     3     4     5     6   Sum
##   1       7    18    30    44    46   212   357
##   2     130   226   470   477   632  1254  3189
##   3    1090  1979  3792  4790  3458  3907 19016
##   4     251   359   489   598   444   181  2322
##   5     131   125   144   194   122    69   785
##   6     351   741  1191  1346  1016   560  5205
##   7    1481  2346  3404  3944  2525  1031 14731
##   Sum  3441  5794  9520 11393  8243  7214 45605
```

```
## H_0: Response and explanatory variable are independent.
## H_A: Response and explanatory variable are dependent.
## Check conditions: expected counts
##    x
## y         1       2       3       4       5       6
##   1   26.94   45.36   74.52   89.19   64.53   56.47
##   2  240.62  405.15  665.70  796.67  576.40  504.45
##   3 1434.80 2415.93 3969.57 4750.56 3437.10 3008.03
##   4  175.20  295.00  484.72  580.08  419.70  367.30
##   5   59.23   99.73  163.87  196.11  141.89  124.17
##   6  392.73  661.28 1086.54 1300.31  940.79  823.35
##   7 1111.49 1871.54 3075.08 3680.09 2662.59 2330.21
## 
## 	Pearson's Chi-squared test
## 
## data:  y_table
## X-squared = 3799, df = 30, p-value < 2.2e-16
```

![plot of chunk unnamed-chunk-5](figure/unnamed-chunk-5.png) 





### Conclusion:

The test statistic X^2 is very large and the p-value is nearly 0.
this means that if we conditioned H_null is true, this dataset shows themself are extremely rare. accordingly, we can reject null hypothesis.

so we can conclude agegoups and the expected income after retirement are __dependent__.


The sample was randomly seleted from the population of unterest without any assignment, so it's an observational study. And, expected income after retirement is a categorical variables according to the analysis below - how do you calculate its mean?

### Supplementary comparison with ANOVA by use of same dataset.

p-value is same as X^2 test. and I can see the result of paited test.


```r
inference(y = mydata[, 1], x = as.factor(mydata[, 2]), est = "mean", type = "ht", 
    alternative = "greater", method = "theoretical")
```

```
## Response variable: numerical, Explanatory variable: categorical
## ANOVA
## Summary statistics:
## n_1 = 3441, mean_1 = 5.135, sd_1 = 1.876
## n_2 = 5794, mean_2 = 5.063, sd_2 = 1.89
## n_3 = 9520, mean_3 = 4.832, sd_3 = 1.915
## n_4 = 11393, mean_4 = 4.776, sd_4 = 1.904
## n_5 = 8243, mean_5 = 4.591, sd_5 = 1.922
## n_6 = 7214, mean_6 = 3.616, sd_6 = 1.721
```

```
## H_0: All means are equal.
## H_A: At least one mean is different.
## Analysis of Variance Table
## 
## Response: y
##              Df Sum Sq Mean Sq F value Pr(>F)
## x             5  10021    2004     568 <2e-16
## Residuals 45599 160805       4               
## 
## Pairwise tests: t tests with pooled SD 
##        1  2      3  4  5
## 2 0.0762 NA     NA NA NA
## 3 0.0000  0     NA NA NA
## 4 0.0000  0 0.0336 NA NA
## 5 0.0000  0 0.0000  0 NA
## 6 0.0000  0 0.0000  0  0
```

![plot of chunk unnamed-chunk-6](figure/unnamed-chunk-6.png) 



