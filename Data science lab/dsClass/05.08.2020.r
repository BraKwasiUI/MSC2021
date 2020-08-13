# 1. How to load files


print(getwd())
# Set current working directory.
setwd("~/MSCP32")

# Get the working directory
print(getwd())
MyData <- read.csv(file="inputs.csv", header=TRUE, sep=",")
print (MyData)


# 2. How to convert a variable to different data type?

str(MyData)

is.numeric(10)
as.numeric("10")

#3: How to transpose a Data set?

MyData <- read.csv(file="explo1.csv", header=TRUE, sep=",")
install.packages("reshape")
library(reshape)
library(cast)
mdata <- melt(MyData, id=c("id","time"))
print(mdata)


# cast the melted data
# cast(data, formula, function)
subjmeans <- cast(mdata, id~variable, mean)
timemeans <- cast(mdata, time~variable, mean)
print(subjmeans)
print(timemeans)


#4: How to sort DataFrame?

MyData <- read.csv(file="inputs.csv", header=TRUE, sep=",")
MyData[with(MyData, order(name)),]

# Sorting by column index
MyData[  order( MyData[,1] ),]

# Sort by multiple columns
MyData[with(MyData, order(name, salary)),]


#5: How to create plots (Histogram)?

score <-rnorm(n=1000, m=80, sd=20) 
hist(score)
MyData <- read.csv(file="inputs.csv", header=TRUE, sep=",")
print(MyData)
hist(MyData[,"salary"])


# 6: How to generate frequency tables with R?


print(iris)
table(iris$Species)


#7: How to sample Data set in R?
# This code will simply take out a random sample of 100 observations from the table mydata.
MyData <- read.csv(file="inputs.csv", header=TRUE, sep=",")


mysample <- MyData[sample(1:nrow(MyData),4,replace=FALSE),]
print(mysample)

#8: How to remove duplicate values of a variable?
x <- round(rnorm(20, 10, 5))
print (x)
unique(x)


# 9: How to find class level count average and sum in R?
tapply(iris$Sepal.Length,iris$Species,sum)
?tapply


#10: How to recognize and Treat missing values and outliers?

y <- c(4,5,6,NA)
is.na(y)
y[is.na(y)] <- mean(y,na.rm=TRUE)
print(y)


#11. How to merge / join data sets?

emp.data1 <- data.frame(
  emp_id = c (1:5), 
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25), 
  
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                         "2015-03-27")),
  stringsAsFactors = FALSE
)
# Print the data frame.			
print(emp.data1) 

emp.data2 <- data.frame(
  emp_id = c (4:8), 
  emp_name = c("Ryan","Gary","Madhan","Ramesh","Girish"),
  salary = c(623.3,515.2,611.0,729.0,843.25), 
  
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                         "2015-03-27")),
  stringsAsFactors = FALSE
)
# Print the data frame.			
print(emp.data2) 


total <- merge(emp.data1,emp.data2,by="emp_id")
print(total)
