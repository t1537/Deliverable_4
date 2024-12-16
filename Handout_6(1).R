library(olsrr)

# load the dataset (note: put in the location where the data is saved)
mpg <- read.csv('~/mpg_Handout_6.csv')

# fit the model
reg <- lm(mpg ~ horsepower + weight, data = mpg)
summary(reg)
ols_regress(reg)

# chosen model
reg1 <- lm(mpg ~ weight, data = mpg)
summary(reg1)
predict(reg1, data.frame(weight=2480), interval = "p")









