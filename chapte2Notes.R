The Histogram
• The histogram is a graph
that displays the data by
using contiguous vertical
bars of various heights to
represent the frequencies
of the classes.

The Frequency Polygon
• Another way to represent the same data set is by using a frequency polygon.
• The frequency polygon is a graph that displays the data by using lines 
that connect points plottedfor the frequencies at the midpoints 
of the classes. The frequencies are represented by the heights
of the points.

• A measure of central tendency is a measure which indicates where the
middle of the data is.
• The three most commonly used measures of central tendency are: the mean,
median and the mode.
The Mean:
  • It is the average of the data. 

The arithmetic mean is the most widely used measure of
location. It requires the interval scale. Its major
characteristics are:
  – All values are used.
– It is unique.
– The sum of the deviations from the mean is 0.
– It is calculated by summing the values and dividing by
the number of values.
– The mean is affected by unusually large or small data
values.

For ungrouped data, the population mean is the sum of all the
population values divided by the total number of population
values

For ungrouped data, the sample mean is the sum of all the
sample values divided by the number of sample values.

Data built-in R
data()
data("iris")
str('iris')
## chr "iris"
head('iris')
## [1] "iris"
head("iris",3)
## [1] "iris"
tail('iris')
## [1] "iris"
iris[1:5,2:4]


data$SES = as.factor(data$SES)
data$Gender = as.factor(data$Gender)
library(dplyr)
##
## Attaching package: 'dplyr'
## The following objects are masked from 'package:stats':
##
## filter, lag
## The following objects are masked from 'package:base':
##
## intersect, setdiff, setequal, union
#Rename Factor Levels in R
levels(data$Gender) <- c("m", "f")
levels(data$SES) <- c("low", "medium","high")
Pie Chart
tab = table(data$SES)
#cross tabulation
tab2 = table(data$Gender,data$SES)
pie(tab,main = "Pie chart SES")
#Bar Chart
barplot(tab,col = rainbow(3))
#Histogram
hist(data$Final_Grade,
     col = "green",
     main = "Histogram for Final Grade",
     xlab = 'Final Grade' 