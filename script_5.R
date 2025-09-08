#activating repositories----
setRepositories()

install.packages("readxl",dependencies = TRUE)
library(readxl)
install.packages("tidyverse",dependencies = TRUE)
library(tidyverse)
library(ggplot2)
install.packages("devtools", dependencies = TRUE)
library(devtools)
devtools::install_github("JLSteenwyk/ggpubfigs",force = TRUE)
library(ggpubfigs)
install.packages("ggpubr",dependencies = TRUE)
library(ggpubr)
install.packages("esquisse",dependencies = TRUE)
library(esquisse)
#plotting using esquisse package----
esquisser()
df_2 <- mpg
ggplot(df_2) +
  aes(x = displ, y = hwy, colour = cyl) +
  geom_point() +
  scale_color_viridis_c(option = "viridis", direction = 1) +
  labs(x = "displacement", y = "highway", color = "cylinder") +
  coord_polar(theta = "x") +
  theme_minimal()


ggplot(df_2) +
  aes(x = displ, y = hwy, colour = cyl) +
  geom_point() +
  geom_smooth(se = TRUE) +
  scale_color_viridis_c(option = "viridis", direction = 1) +
  labs(x = "displacement", y = "highway", color = "cylinder") +
  theme_minimal()

