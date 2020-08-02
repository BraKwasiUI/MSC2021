#list 
currylist <- list("Tomatoe","Onion","Chilli", chicken= "1kg", spice=c("tumeric","chicken masala"))
currylist$spice #$ is used to access named elements in our list
#just like vectors indexing and slicing can be done on lists
currylist[1:4]

#To access element in list with values assigned 
currylist$chicken

student.detail<-list(Name="Jesse Afari",Age="32",Country="Ghana",Favorite="Briyani")
student.detail

#we can also create a name list from an existing list
#this will print the names assigned to element in the list
#names is a generic access function to accesss the names attribute of an R object
names(student.detail)

#we can access the element 3rd element in the list by index 
student.detail[3]

#we can also access the elements in any order 
student.detail[c(1,3,2)] #that is 1st element,3rd and 2nd element  

#access and change element in list
student.detail$Name<-"Wendy Afari"
student.detail$Name


#list from vectors
a<-c(1:5)
b<-c("Jay","Gray","May")
c<-c("Ghana","Niga","Swazi")

mylist<-list(a,b,c)
mylist

#print elements in list with exception of the first one
mylist[-1]

#list from Matrix
d<-matrix(c(1:5),2,byrow = TRUE)
d
mylistd<-list(d)
mylistd

#merge two or more list
listall<-list(mylist,mylistd,student.detail)
listall

#dataframe
#data frame stores info in row and columns
#creating dataframe 
id<-c("P191301","p191302","p191303","p191304","p191305")
Std.name<-c("Jesse","Aleena","Arun","Beulah","Barth")
std.age<-c(32,21,23,22,21)
std.state<-c("Accra","Kerala","Venakani","Chennai","Thiruvarur")

student.db<-data.frame(id,Std.name,std.age,std.state)
student.db

#to get column from this dataframe
names(student.db)

#we can add to the dataframe 
#column
std.guide<-c("Martin","Appavu","Chandra","Saranya","Saranya")
student.dbupdate<-cbind(student.db,std.guide)
student.dbupdate

#we can add to the dataframe by row
student.dbupdate<-rbind(student.dbupdate,list("p191306","Mounica",21,"Andra","Nandhini",))

#accessing element in dataframe
student.dbupdate[1] #First column
student.dbupdate$S.Name #prints a list of all student names

#access student detail with age >31
student.dbupdate[student.dbupdate$std.age>31,]

#get the 1st 3rd and 2nd column respectively
student.dbupdate[c(1,3,2)]

#we can also assign new value in the dataframe by accessing and assinging
student.dbupdate$std.age[1]
student.dbupdate

#we can access the first two records in the dataframe
head(student.dbupdate,2)

#we can access the last two records in the dataframe
tail(student.dbupdate,2)

#we can also access rows dataframe like a matrix
student.dbupdate[1:3,]

#access student detail who are guided by Saranya
student.dbupdate[student.dbupdate$std.guide=="Saranya",]

#deleting elements in dataframe
#column
std.food<-c("Banku","Rice","Eggpuff","Briyani","Samosa")
student.dbupdate<-cbind(student.dbupdate,std.food)
student.dbupdate

student.dbupdate[6]<-NULL #by assigning Null column is removed
student.dbupdate[-c(6)] # deletes the elements in the 5th and 2nd column 

#row
student.dbupdate[-c(5),] #deletes the elements in the 5th and 2nd column  

#functions on dataframe
ncol(student.dbupdate) #number of columns
nrow(student.dbupdate) #number of columns
summary(student.dbupdate)#method returns the nature of the data and the statistical summary such as Minimum, Median, Mean, Median

#we can also change the column name
colnames(student.dbupdate)<-c("S.ID","S.Name","S.Age","S.State","S.Guide","S.Food")
student.dbupdate

#factors
myfact<-c("Male","Female","Male","Female","Trans","Female")
fac<-factor(myfact)
fac

data <- c("East","West","East","North","North","East","West",
          "West","West","East","North")
# Create the factors
factor_data <- factor(data)
print(factor_data)
