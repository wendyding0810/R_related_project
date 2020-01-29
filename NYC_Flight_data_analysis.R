###3.	Refer to NYC flight data in the R package "nycflights13". 
###Compute the average delay by destination, 
###then join on the airports data frame so you can show the spatial distribution of delays. 
install.packages("tidyverse")
install.packages("nycflights13")
library(tidyverse)
library(nycflights13)

##############answer #############
######
flights %>% group_by(dest) %>%
  summarize(avg_arr_delay = mean(arr_delay, na.rm = TRUE)) %>%
  inner_join(airports, by = c('dest' = 'faa')) %>%
  ggplot(aes(x = lon, y = lat, color = avg_arr_delay)) +
  borders('state') +
  geom_point(size = 2, alpha = 0.8) +
  coord_quickmap()+
  viridis::scale_color_viridis()

