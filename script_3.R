#installing packages----
setRepositories()
install.packages("readxl",dependencies = TRUE)
library(readxl)
install.packages("tidyverse", dependencies = TRUE)
library(tidyverse)
library(ggplot2)

#importing data----
data("iris")
df <- iris
View(df)

#plot making using ggplot2----
ggplot(data = df, mapping = aes(x= Sepal.Length, y=Sepal.Width))+geom_point()

ggplot(data = df, mapping = aes(x= Sepal.Length, y=Sepal.Width, col=Species))+
  geom_point()

ggplot(data = df, mapping = aes(x= Sepal.Length, y=Sepal.Width, col=Species))+
  geom_point(size=5)
 
ggplot(data = df, mapping = aes(x= Sepal.Length, y=Sepal.Width, col=Species))+
  geom_point(size=5)+theme_classic()+labs(x="sep_length", y="sep_width")

ggplot(data = df, mapping = aes(x= Sepal.Length, y=Sepal.Width, col=Species))+
  geom_point(size=5)+theme_classic()+labs(x="sep_length", y="sep_width")+
  facet_wrap(~Species)+facet_grid(.~Species)

ggplot(data = df, mapping = aes(x= Sepal.Length, y=Sepal.Width, col=Species))+
  geom_point(size=5)+theme_classic()+labs(x="sep_length", y="sep_width")+
  facet_wrap(~Species)+facet_grid(.~Species)+ coord_flip()

ggplot(data = df, mapping = aes(x= Sepal.Length, y=Sepal.Width, col=Species))+
  geom_point(size=5)+theme_classic()+labs(x="sep_length", y="sep_width")+
  facet_wrap(~Species)+facet_grid(.~Species)+ coord_flip()+geom_line()

ggplot(data = df, mapping = aes(x= Sepal.Length, y=Sepal.Width, col=Species))+
  geom_point(size=5)+theme_classic()+labs(x="sep_length", y="sep_width")+
  facet_wrap(~Species)+facet_grid(.~Species)+ coord_flip()+stat_ellipse(size=2)








