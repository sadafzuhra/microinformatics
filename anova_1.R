# activating repositeries ----
setRepositories()
library(readxl)
library(tidyverse)
library(ggplot2)
library(multcomp)
library(multcompView)
library(car)

#importing dataset----
zone_data <- read_excel("zonedata.xlsx")
View(zone_data)

# ANOVA ----
glimpse(zone_data)
unique(zone_data$farm_location)
colnames(zone_data)

library(dplyr)
df_new <- zone_data %>%
  dplyr::select(farm_location, kids_mortality) %>%
  filter(farm_location %in% c("Bahawalpur", "Vehari", "Hafizabad"))
  
# comparison of more than 2 cluster or categories
## assumption of ANOVA----
### normality ditribution----
df_new %>% 
  group_by(farm_location) %>%
  summarise(s_pvalue = shapiro.test(kids_mortality)$p.value)

# histogram
hist(df_new$kids_mortality ,col = 2)
#qqnorm
qqnorm(df_new$kids_mortality ,col=2)
# shapiro-Wilk test
shapiro.test(df_new$kids_mortality)

## anova ----
anova <- aov(kids_mortality ~ farm_location, data = df_new)
summary(anova)

hist(anova$residuals)
qqnorm(anova$residuals)
shapiro.test(anova$residuals)
## one- way anova----

oneway.test(kids_mortality ~ farm_location, data = df_new , var.equal = TRUE)

oneway.test(kids_mortality ~ farm_location, data = df_new , var.equal = FALSE)

##post-HOC test on "df_new" Data----

df_new$farm_location <- as.factor(df_new$farm_location)
anova <- aov(kids_mortality ~ farm_location, data = df_new)


tukey <- glht(anova,
                linfct = mcp(farm_location = "Tukey"))
summary(tukey)
TukeyHSD(anova)

plot(tukey , col= 2)
plot(TukeyHSD(anova))

## two way ANOVA----


tooth_data <- ToothGrowth
glimpse(tooth_data)

tooth_data$dose <- as.factor(tooth_data$dose)
glimpse(tooth_data)

#assumption for tooth_daat
hist(tooth_data$len)
hist(anova_2$residuals)


anova_2 <-aov(len ~ supp*dose ,data = tooth_data)
summary(anova_2)

#post-hoc test on anova_2----


tukey_2<-  TukeyHSD(anova_2)
summary(tukey_2)

TukeyHSD(anova_2)

plot(tukey_2 , col= 2)

## two way anova on zone data----
zone_data<-   zone_data %>% 
  dplyr::select( farm_location, season, kids_mortality)  %>% 
  filter(farm_location %in% c("Bahawalpur" ,"Hafizabad", "Vehari"))

  
zone_data$season <- as.factor(zone_data$season)
zone_data$farm_location <- as.factor(zone_data$farm_location)

anova_3 <- aov(kids_mortality ~season*farm_location, data = zone_data)
glimpse(zone_data)

#post-hoc test on zone data
tukey_3 <- TukeyHSD(anova_3)

plot(TukeyHSD(anova_3))

##lettering from anova_3 & tukey_3----


letters <- multcompLetters4(anova_3, tukey_3)
summary(letters)

letters <- data.frame(letters$`season:farm_location`$Letters)

## data frame containing mean and standard deviation----

final_zone_data<- zone_data %>% 
  group_by(farm_location, season) %>% 
  summarise(averages= mean(kids_mortality), sd= sd( kids_mortality)) %>% 
  arrange(desc(averages))

final_zone_data <- final_zone_data %>% filter(farm_location %in% c("Bahawalpur" ,"Hafizabad", "Vehari"))

##plotting multiple comparison of mean----

final_zone_data$letters <- letters$letters..season.farm_location..Letters
ggplot(data = final_zone_data, mapping = aes(x = farm_location, y = averages, group = season, fill = season)) +
  geom_bar(stat = "identity", position = position_dodge(0.9)) +
  geom_errorbar(aes(ymin = averages - sd, ymax = averages + sd), width = 0.1,
                position = position_dodge(0.9)) +
  geom_text(aes(label = letters, y = averages + sd),
            position = position_dodge(0.9), vjust = -0.4) +
  theme_minimal() +
  scale_fill_manual(values = c("red", "blue")) +
  ylim(0, 100) +
  labs(title = "Average Values by Farm Location and Season",
       x = "Farm Location",
       y = "Averages",
       fill = "Season")  

# Save the plot using ggsave
ggsave("my_plot.png", plot = my_plot, width = 10, height = 6)













