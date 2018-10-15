# load packages
library(readr)
library(ggplot2)


# import data
simp_data <- read_csv("simpsons.csv")


# plot simple scatterplot
ggplot(simp_data, aes(x = spend, y = revenue)) + 
  geom_point() +
  labs(title = "Revenue Against PPC Spend",
       y ="Revenue",
       x = "Spend") +
  theme_minimal()


# plot with regression line
ggplot(simp_data, aes(x = spend, y = revenue)) + 
  geom_point() + geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Revenue Against PPC Spend",
       y ="Revenue",
       x = "Spend") +
  theme_minimal()


# look at linear model
summary(lm(spend ~ revenue, data = simp_data))


# plot with regression line for each campaign group
ggplot(simp_data, aes(x = spend, y = revenue, colour = campaign)) + 
  geom_point() + geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Revenue Against PPC Spend",
       y ="Revenue",
       x = "Spend") +
  theme_minimal()




