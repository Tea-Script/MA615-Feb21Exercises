
library(tidyverse)

raw <- readRDS("rawdat.RDS")

raw.tidy <- raw %>% gather(key = "Income", value = "frequency", -religion)

raw.tidy

## now use spread to get back to the untidy table you started with.






















raw.2 <- raw.tidy %>% spread(Income, frequency)




############################################################################
## imagine closing prices on 3 securities over 10 days
set.seed(2018)

stocks <- tibble(
  date = as.Date('2009-01-01') + 0:9,
  X = rnorm(10, 0, 1),
  Y = rnorm(10, 0, 2),
  Z = rnorm(10, 0, 4)
)




stocks

## is it tidy?




















stocks.1 <- stocks %>% gather(key = "stocks", value ="price", -date)
stocks.1

## now get the original table back

















stocks.2 <- spread(stocks.1, stocks, price )








