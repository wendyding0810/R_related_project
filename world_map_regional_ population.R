####### using ggplot to drawing map_1 #######
  
library(ggplot2)
library(dplyr)
require(maps)
require(viridis)
theme_set(
  theme_void()
)

countries <- c("Portugal", "Spain", "France", "Switzerland", "Germany")
maps <- map_data("world", region = countries)

p <- ggplot(maps, aes(x = long, y = lat, group = group, fill = region)) + 
  geom_polygon(colour = "black") + 
  scale_fill_brewer(palette = "Set2")
p




