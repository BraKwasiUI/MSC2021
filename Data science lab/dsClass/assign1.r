library(dplyr)
#importing data
mydata<- read.csv(file = "C:\\Users\\KWASI\\Documents\\books\\MastersCUTN\\3rd Sem\\Data Science\\dsClass\\2012_SAT_Results.csv",stringsAsFactors = FALSE)

str(mydata)
names(mydata)
class(mydata)

#converting from characters to numberic
mydata$Num.of.SAT.Test.Takers<-as.numeric(mydata$Num.of.SAT.Test.Takers)
class(mydata$Num.of.SAT.Test.Takers)

mydata$SAT.Critical.Reading.Avg..Score<-as.numeric(mydata$SAT.Critical.Reading.Avg..Score)
class(mydata$SAT.Critical.Reading.Avg..Score)

mydata$SAT.Math.Avg..Score<-as.numeric(mydata$SAT.Math.Avg..Score)
class(mydata$SAT.Math.Avg..Score)

mydata$SAT.Writing.Avg..Score<-as.numeric(mydata$SAT.Writing.Avg..Score)
class(mydata$SAT.Writing.Avg..Score)

#check if all corrections been made
head(mydata$SAT.Critical.Reading.Avg..Score,25)
str(mydata)

#dealing with na this replaces the na with zero values
is.na(mydata)
mydata[is.na(mydata)]<-0




