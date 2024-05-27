library(dplyr)
library(gapminder)
data1 = read.csv(file.choose(),header=T)
head(data1)
# 1
data1 %>% filter(day_night == "Night") %>%
  summarise(n())
# Load necessary libraries
library(dplyr)
library(tidyr)

# Sample Data Creation
set.seed(data1) # for reproducibility
sample_data <- data.frame(
  day_of_week = sample(c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"), 100, replace = TRUE),
  opponent = sample(c("Team A", "Team B", "Team C"), 100, replace = TRUE),
  skies = sample(c("Cloudy", "Clear", "Rainy"), 100, replace = TRUE),
  day_night = sample(c("Day", "Night"), 100, replace = TRUE)
)

# Creating Frequency Distribution Table
# You can adjust the following code to create separate tables for each variable or one combined table

# Frequency table for each category
data1 %>% count(day_of_week)
data1 %>% count(opponent)
data1 %>% count(skies)
data1 %>% count(day_night)

# Printing the tables
print("Frequency of Day of Week:")
print(frequency_day_of_week)
print("Frequency of Opponent:")
print(frequency_opponent)
print("Frequency of Skies:")
print(frequency_skies)
print("Frequency of Day/Night:")
print(frequency_day_night)
      
#2
# #which day of the week saw the minimum number of games
table(data1$day_of_week)

#3
#Out of 81 games, for how many games skies were cloudy?
data1 %>% filter(skies == "Cloudy") %>%
  summarise(n())
#4 
data1 %>% filter(opponent == "Rockies" ) %>%
  summarise(n())
data1 %>% filter(opponent == "Angels") %>%
  summarise(n())

#question 3

data1 %>% filter( day_night == "Day" | skies == "Cloudy" ) %>% 
  summarise(n())
filter(lifeExp==min(lifeExp) | lifeExp == max(lifeExp)) 

data1$opponent
# question 4
# attendance avg
#Average attendance was the highest for game with which opponent?
data1 %>% group_by(opponent) %>%
  summarise(Avg = mean(attend)) %>%
  arrange(desc(Avg))



#5
# the mean
# how much the average attendance based on all data available
data1 %>% summarise(mean(attend))
# how much the standard daviation of the attendance
data1 %>% summarise(sd(attend))
data1 %>% summarise(min(attend))
data1 %>% summarise(max(attend))
data1 %>% summarise(mi(attend)) - data1 %>% summarise(min(attend))

data1 %>% range(summarise(max(attend)),summarise(min(attend)))
data1 %>% summarise((attend),2)

# 6
#in attendance when Pirates play as opponents?
data1 %>% filter(opponent =="Pirates") %>%
  summarise(sd(attend))

# case2
# 7
gapminder %>% filter(country == "Somalia") %>% 
  filter(lifeExp == min(lifeExp) | lifeExp == max(lifeExp))   

#8
gapminder %>% group_by(continent) %>% 
  filter(year == 1992 | year == 2007) %>%
  summarise(Total = sum(pop)) %>%
  arrange(desc(Total))

#9 

gapminder %>% group_by(country ) %>% filter(continent == "Asia") %>%
  filter(lifeExp==min(lifeExp) | lifeExp == max(lifeExp))  %>%
  summarise(Avg = mean(lifeExp)) %>%
  arrange(desc(Avg))



#10


# Calculate GDP as a new column and then find the country with the largest GDP in 2007
gapminder %>%
  mutate(gdp = pop * gdpPercap) %>%  
  filter(year == 2007) %>%       
  arrange(desc(gdp))             

                          

