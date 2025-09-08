setRepositories()
library(readxl)
library(tidyverse)
library(ggplot2)
data(mpg)
df <- mpg
ggplot(data = df, mapping = aes(x = displ ,y =hwy)) +geom_point()

ggplot(data = df, mapping = aes(x = displ ,y =hwy, colour =   class)) +geom_point() +
  facet_grid(drv ~ cyl)

data("diamonds")
df <- diamonds
ggplot(data = df)+geom_bar(mapping = aes(x=cut))

ggplot(data = df)+geom_bar(mapping = aes(x=cut , colour = cut))
ggplot(data = df)+geom_bar(mapping = aes(x = cut, fill = cut))

ggplot(data = df)+geom_bar(mapping = aes(x = cut, fill = clarity))
ggplot(data = df)+geom_bar(mapping = aes(x = cut, fill = clarity),position = "fill")
ggplot(data = df)+geom_bar(mapping = aes(x = cut, fill = clarity),position = "dodge")
