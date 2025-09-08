setRepositories()
install.packages("readxl", dependencies = TRUE)
library(readxl)
install.packages("tidyverse", dependencies = TRUE)
library(tidyverse)
library(ggplot2)
install.packages("nycflights23", dependencies = TRUE)
library(nycflights13)

df <- nycflights23::flights
glimpse(df)
summary(df)

view(df)

df_1 <- filter(df, df$month==1)
df_1
view(df_1)

unique(df$month)
unique(df$day)
unique(df$carrier)

df_2 <- filter(df_1, df_1$carrier=="UA")
view(df_2)

df_1 <- filter(df, df$month==1, df$carrier=="UA")
remove(df_2)

plot(df_1)

ggplot(data=df_1, mapping = aes(x=dest, y=distance, col="red"))+
  geom_bar(stat="identity")+theme_classic()

ggplot(data=df_1, mapping = aes(x=dest, y=distance, fill="red"))+
  geom_bar(stat="identity")+theme_classic()+
  geom_jitter(position = "jitter")

ggplot(data=df_1, mapping = aes(x=dest, y=distance, fill="red"))+
  geom_bar(stat="identity")+theme_classic()+
  geom_point()





