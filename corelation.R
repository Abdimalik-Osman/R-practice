#Correlation and Regression
cars = c(63,29,20.8,19.1,13.4,8.5)
revenue = c(7,3.9,2.1,2.8,1.4,1.5)


#scatter plot
plot(cars,revenue,
     main = "cars vs revenue")


#correlation coefficient
cor(cars,revenue)
round(cor(cars,revenue),3)


#Regression Model
model = lm(revenue~cars)
model
abline(model, col = "blue",
       lwd = 2)

#Absence and grade

absence = c(6,2,15,9,12,5,8)
grade = c(82,86,43,74,58,90,78)

#scatter plot
plot(absence,grade)

#correlation coefficient
cor(absence,grade)

#regression model
model2 = lm(grade~absence)
model2


#Multiple Regression
data = read.csv(file.choose(),header = T)
head(data)
model3 = lm(sales~youtube+facebook+newspaper,data)
model3
summary(model3)