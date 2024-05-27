library(dplyr)

data1 = read.csv(file.choose(),header=T)
head(data1)
# 2
dodgers %>% filter(day_night == "Night") %>%
  summarise(n())
