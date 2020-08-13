################################################################
# AUTHOR : THIYAGARAJAN PARAMASIVAN
# CODE : MSCT32
# NAME : DATA SCIENCE AND ANALYTICS
# ORGANISATION : DEPARTMENT OF COMPUTER SCIENCE, CENTRAL UNIVERSITY OF TAMIL NADU
###############################################################

# Data Cleaning
print(getwd())
# Set current working directory.
setwd("~/MSCP32/Cleaning")

# Get the working directory
print(getwd())


# Dealing with SAT Results DataSet

MyData <- read.csv(file="2012_SAT_Results.csv", header=TRUE, sep=",")
# To print first 6 rows in MyData data frame
head(MyData)
# To understand the structure of data frame
str(MyData)
#To convert character data type to numeric data type
MyData$'Num.of.SAT.Test.Takers' = as.numeric(substring(MyData$'Num.of.SAT.Test.Takers', 1))
MyData$'SAT.Critical.Reading.Avg..Score' = as.numeric(substring(MyData$'SAT.Critical.Reading.Avg..Score', 1))
MyData$'SAT.Math.Avg..Score' = as.numeric(substring(MyData$'SAT.Math.Avg..Score', 1))
MyData$'SAT.Writing.Avg..Score' = as.numeric(substring(MyData$'SAT.Writing.Avg..Score', 1))

# After conversion check the data type of data frame
str(MyData)



#Introducr new column
change_MyData <- within(MyData,{Avg_Score = SAT.Critical.Reading.Avg..Score+SAT.Math.Avg..Score+SAT.Writing.Avg..Score})

str(change_MyData)

MyData %>% 
  mutate(Avg_Score = SAT.Critical.Reading.Avg..Score+SAT.Math.Avg..Score+SAT.Writing.Avg..Score)

print ('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%')
str(MyData)


#$$$$$$$$$$$$ 2 DATA SET
# Data Cleaning
library(dplyr)
print(getwd())
# Set current working directory.
setwd("~/MSCP32/Cleaning")

# Get the working directory
print(getwd())
MyData1 <- read.csv(file="2010-2011_Class_Size_-_School-level_detail.csv", header=TRUE, sep=",")

head(MyData1)

str(MyData1)
# To get count of rows
nrow(MyData1)
# To find the unique values in the GRADE column
unique(MyData1$GRADE)
# To filter the data frame with condition
filter_grade <- subset(MyData1, GRADE == "09-12")
print (filter_grade)
nrow(filter_grade)
str(filter_grade)



unique(filter_grade$PROGRAM.TYPE)
# To filter data frame with condition
filter_grade_ptype <- subset(filter_grade, PROGRAM.TYPE=='GEN ED')
nrow(filter_grade_ptype)
head(filter_grade_ptype)
#Applying groupby in the data frame
ex1 <- filter_grade_ptype%>%group_by(SCHOOL.NAME)%>%  summarise(SIZE.OF.SMALLEST.CLASS)
head(ex1)
print(ex1)

#Writing the data frame into CSV file

write.csv(ex1,'grpandsummarise.csv')


