setwd('C:/Users/hp/OneDrive/Documents/Tugas UAS')
library(readxl)
library(tidyverse)

dat<-read_excel('Data ekspor.xlsx')
plot(dat$X,dat$Y,xlab="jumlah ekspor",ylab="jumlah FOB")
reg1<-lm(Y~X,data=dat)
summary(reg1)

Call:
  lm(formula = Y ~ X, data = dat)

Residuals:
  Min      1Q  Median      3Q     Max 
-131990  -80371    6946   69402  124533 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)
(Intercept) 93612.537  78543.151   1.192    0.246
X               1.621      1.292   1.254    0.223

Residual standard error: 84890 on 22 degrees of freedom
Multiple R-squared:  0.06676,	Adjusted R-squared:  0.02434 
F-statistic: 1.574 on 1 and 22 DF,  p-value: 0.2228

dat$u<-resid(reg1)
plot(dat$Y,dat$u,xlab="jumlah ekspor",ylab="error") 






