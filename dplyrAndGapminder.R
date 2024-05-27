library(dplyr)
library(gapminder)
gapminder


head(gapminder)
str(gapminder)

# get from somalia
gapminder %>% filter(country=="Somalia")

#which country has the highest and which is the lowest life Expectance
gapminder %>% filter(lifeExp==min(lifeExp) | lifeExp == max(lifeExp)) 

# when somalia had the highest gdp percapita and
# when somalia has the lowest gdp percapita
gapminder %>% filter(country == "Somalia") %>% 
  filter(gdpPercap == min(gdpPercap) | gdpPercap == max(gdpPercap))     

# in 2007 which country has the gdp percapita
gapminder %>% filter(year == 2007) %>% 
  filter(gdpPercap == max(gdpPercap))

# compare the total population of the continent
gapminder %>% group_by(continent) %>% 
  summarise(Total = sum(pop)) %>%
  arrange(desc(Total))

gapminder %>% group_by(continent) %>% 
  filter(year == 1992) %>%
  summarise(Total = sum(pop)) %>%
  arrange(desc(Total))

# compare the continets based on the average gdp percapita
gapminder %>% group_by(continent) %>%
  summarise(Avg = mean(gdpPercap)) %>%
  arrange(desc(Avg))

#mutate function
new_gapminder = gapminder %>% mutate(gdp = gdpPercap * pop)
head(new_gapminder)

#compare the continents in terms of gdp
new_gapminder %>% group_by(continent) %>%
  summarise(Avg = mean(gdp)) %>%
  arrange(desc(Avg))

# dodgers data
dodgers = read.csv(file.choose(),header = T)

dodgers %>% group_by(opponent) %>%
  summarise(Avg = mean(attend)) %>% 
  arrange(desc(Avg))

# what is the average attendance when 'Rockies' play as opponent
dodgers %>% filter(opponent == "Rockies") %>%
  summarise(mean(attend))
#How many games involve 'Rockies' as opponents?
dodgers %>% filter(opponent == "Rockies") %>%
  summarise(n())
#Out of 81 games, for how many games skies were cloudy?
dodgers %>% filter(skies == "Cloudy") %>%
  summarise(n())
# how much the average attendance based on all data available
dodgers %>% summarise(mean(attend))
# how much the standard daviation of the attendance
dodgers %>% summarise(sd(attend))
#which day of the week saw the minimum number of games
table(dodgers$day_of_week)
str(dodgers)
table(dodgers$opponent)
dodgers %>% filter(opponent == "Rockies") %>%
  summarise(n())

#Out of 81 games, how many games were played in the night?
dodgers %>% filter( day_night == "Night") %>%
  summarise(n() ) 
#Average attendance was the highest for game with which opponent?
dodgers %>% group_by(opponent) %>%
  summarise(Avg = mean(attend)) %>%
  arrange(desc(Avg))

#How much is the standard deviation
#in attendance when Pirates play as opponents?
dodgers %>% filter(opponent =="Pirates") %>%
  summarise(sd(attend))

# How many variables does the 'dodgers' data have?
str(dodgers)


                     