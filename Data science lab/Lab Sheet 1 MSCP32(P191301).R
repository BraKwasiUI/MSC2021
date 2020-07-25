
#-_ 
# Assigning variables
Jesseage <- 10
wendyage <- 20 
Jesseage
wendyage

#Operations
#area of a rectangle
lenght <- 5
width <- 5
area <-lenght*width
area

#vectors
myvec <- c(10,20,30,40)
#operation on vectors
myvec+5
myvec*3
c(5,myvec)
#update of vector
myvec <- c(5,myvec)
myvec

myvec2 <- c("Jesse", 10, "Ghana","Accra")
length(myvec2)

#indexing
myvec2[1] #will print "Jesse because its the first element"
myvec2[2] <- 30  #this will assign 20 to the 2nd position in my vector
myvec3 <- c(1:10)#this creates a sequence of numbers from one to ten
result<- myvec5+myvec3 #sums both content of the vectors
myvec5 <- c(1,2,3,4,5,6,7,8,9,10)

# Vectors challenges
#(1)
phrase <- c("I","dont","know", "i","know")
phrase[4:1]#reversal of the first 4 words
#(2)
phrase[-2]#this slices the vector by removing the element in the second position
phrase[-5]#this slices the vector by removing the element in the fifth position
phrase[-1:-3]#like [-2] it slices the vector by removing the values from the  1st to the 3rd postion   
#(3)
newP<- c((phrase[-1:-3]),(phrase[-3:-5]))

# functions
sum(myvec5)
rep(newP,2) #this repeats my vector twice
rep(newP,each=2)#this repeats each word in the vector twice

# function challenges
#(1)
sum(1:5)
#(2)
sum(1:10000)
#(3)
print (seq(1,5))#it a function that create sequence of number given a start and end number

#list 
currylist <- list("Tomatoe","Onion","Chilli", chicken= "1kg", spice=c("tumeric","chicken masala"))
currylist$spice #$ is used to access named elements in our list
#just like vectors indexing and slicing can be done on lists
currylist[]

#arrays and Matrices
v1<-c(1,2,3,4)
v2<-c(11,20,50)
arr<-array(c(v1,v2),dim = c(3,4,3))#this create 3 matrices with 3 rows and 4 columns each 
print(arr[1, 2, 1])#this prints the element in the 1st row 2nd column of the 1st matrix

#picks and makes a maticx from the 1st matrix of the array
mat.arr<-arr[,,1]
mat.arr

#this create 3 by 4 matrix and arranges the element in the matrix in order of row
matrixA<-matrix(c(1:10),nrow = 3, byrow=TRUE) 
matrixA


#this create 3 by 4 matrix and arranges the element in the matrix in order of column
matrixB<-matrix(c(10:20),nrow = 3, byrow=FALSE) 
matrixB

#operation on matrix
MAdd<-matrixA+matrixB
MAdd

#accessing element in matrix
matrixA[1,3] #this will print the element on the 1st row and 3rd column 
