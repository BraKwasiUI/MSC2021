#variables
#Variable can be assigned in more ways
var.1=c(1:10)
var.2<-c("Jesse","Aleena")
c("P191301","p191302")->var.3
var.4<-data.frame(var2,var3)
var.5<-c(TRUE, 1)
var_6<-list(name="Kapil",Age="40")
var_7<-matrix(1:8,nrow = 3)
var_8<-c('yes','no')

#Datatypes of variable
class(var.1)
class(var.2)
class(var.3)
class(var.4)
class(var.5)
class(var_6)
class(var_7)
class(var_8)

#To find all variables assigned in the ide 
ls()
ls(pattern = "var")
#To find the variables that have var
ls(pattern = "var")
#to find variables with "."
ls(all.name = TRUE)


#to delete a variable
?rm
rm(var8)
var8


#Relational Operations
a<-10
b<-90
#check is greater or lesse
b>a
b<a

a1<-c(1:4)
a2<-c(5:2)
a1>a2

#check is they are equal
a3<-c(1,2,4,5)
a3==a1

#check if they are greater or equal
a2>=a3
#check if they are less or equal
a2<=a3

#not equal
a1!=a2

#logical Operator
#logical operators are used only on vectors of type logical or numeric
#Number > 1 are deem true and <1 false

#using & compares the elements in both vectors and returns the numbers that are 
#true or false whn compared
#AND Operator
a1&a3
a4<-c(0,1,2,9)
a1&a4
#OR OPerator
a4|a1

#not Operator give the opposite result
!a4

a4&&a1
a4||a1

#assigment Operators already used at the start

#miscellaneous Operators
#colon
c(1:4)#creates series of number in sequence

#%in% used to identify element in vectors
9%in%a4
