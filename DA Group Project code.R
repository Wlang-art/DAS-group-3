data <- read.csv("DAProject6.csv")

library(tidyverse)
library(tidymodels)
library(moderndive)
library(skimr)
library(gapminder)



model1 <- linear_reg() |>
  fit(BMI ~ Year, data = data)
model1


regression_points <- get_regression_points(model1$fit)
regression_points

ggplot(regression_points, aes(x = Year, y = residual)) +
  geom_jitter(width = 0.1) + 
  labs(x = "Year", y = "Residual") +
  geom_hline(yintercept = 0, col = "blue")


