# activating repositories----
setRepositories()
library(readxl)
library(tidyverse)
library(ggplot2)

# correlation on mpg datasrt----

mpg <- mpg
library(corrplot)

corr<- mpg %>% select(., displ, cyl, cty, hwy) %>% 
  cor()

corrplot(corr, method = "number", type = "full")

corrplot(corr, method = "shade", type = "full")

corrplot(corr, method = "circle", type = "full")

corrplot(corr, method = "circle", type = "full", order = "hclust", addrect = TRUE)

corrplot(corr, method = "circle", type = "lower", order = "hclust", addrect = TRUE)

corrplot(corr, method = "circle", type = "upper", order = "hclust", addrect = TRUE)

corrplot.mixed(corr, lower = "circle", upper = "shade")










# regression in R----
library(stats)

mod <- mpg %>%  lm( formula = displ ~ cyl)

summary(mod)

plot(mod, col=2, lwd=1)
 par(mfrow = c(2,2))

ggplot(data = mpg , aes(x= cyl,y =displ))+geom_abline(col=2)+geom_point(col= "blue")+ geom_smooth(se=FALSE, col="green")
