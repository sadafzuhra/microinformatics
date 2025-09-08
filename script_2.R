setRepositories()
install.packages("readxl", dependencies = TRUE)
library(readxl)
install.packages("tidyverse", dependencies = TRUE)
library(tidyverse)
library(ggplot2)
data("iris")
df <- iris
View(df)

ggplot(data = df, mapping = aes(x =Sepal.Length, y=Sepal.Width))+geom_point()
