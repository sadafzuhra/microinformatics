setRepositories()
install.packages("sf", dependencies = TRUE)
install.packages("rnaturalearth", dependencies = TRUE)
# installing required packages ----
library(readxl)
library(tidyverse)
library(ggplot2)
library(ggthemes)
library(sf)
library(rnaturalearth)
library(rnaturalearthdata)

# making plots ----
world <- ne_countries(scale = "medium", 
                      returnclass = "sf")
view(world)

# practice plot 1----
ggplot(data=world,  aes(fill = income_grp)) +geom_sf() + theme_map() + scale_fill_viridis_d()


world %>% 
  ggplot(aes(fill = income_grp)) +geom_sf() + theme_map() + scale_fill_viridis_d()

# practice plot 2-----

world %>% 
  filter(region_un=="Africa") %>% 
  ggplot() +
  geom_sf(aes(fill= pop_est/1e6), 
          color= "white", 
          lwd = 0.3) +
  theme_map()




world %>% 
  filter(region_un=="Asia") %>% 
  ggplot() +
  geom_sf(aes(fill= pop_est/1e6), 
          color= "white", 
          lwd = 0.3) +
  theme_map()





world %>% 
  filter(region_un=="Europe") %>% 
  ggplot() +
  geom_sf(aes(fill= pop_est/1e6), 
          color= "white", 
          lwd = 0.3) +
  theme_map()

# making interactive plots ----


install.packages("janitor", dependencies = )
install.packages("giscoR", dependencies = TRUE)

library(tidyverse)
library(janitor)
library(giscoR)

gisco_get_nuts( country = 'Germany') %>% 
  as_tibble() %>% 
  janitor::clean_names() %>% 
  count(levl_code)


gisco_get_nuts( country = 'Germany', 
                nuts_level = 3, 
                year = "2021") %>% 
  as_tibble() %>% 
  janitor::clean_names()


germany_dist <- gisco_get_nuts( country = 'Germany', 
                                nuts_level = 3, 
                                year = "2021", 
                                epsg = 3035) %>% 
  as_tibble() %>% 
  janitor::clean_names()


germany_states <- gisco_get_nuts( country = 'Germany', 
                                  nuts_level = 1, 
                                  year = "2021", 
                                  epsg = 3035) %>% 
  as_tibble() %>% 
  janitor::clean_names()


germany_dist %>% 
  ggplot(aes(geometry = geometry))+ geom_sf()


germany_dist %>% 
  ggplot(aes(geometry = geometry))+ geom_sf( data = germany_states, 
                                             aes(fill= nuts_name, 
                                                 color = "black", 
                                                 lwd = 0.5)) + geom_sf( fill= NA, 
                                                                        color = "black", 
                                                                        
                                                                        lwd = 0.5)
