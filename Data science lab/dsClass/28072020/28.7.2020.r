
# Get the working directory
print(getwd())

# Get the working directory
print(getwd())


install.packages("readxl")
library("readxl")
df<-data.frame(read_excel("Orderdata.xlsx"))
print(df)

#JSON Reading

install.packages("rjson")
library(rjson)

# Import data from json file
JsonData <- fromJSON(file = "sample.json")
df1<-data.frame(JsonData)
print (df1)

#xml
install.packages("XML")
# Load the package required to read XML files.
library("XML")

#Also load the other required package.
library("methods")

#Give the input file name to the function

f<-"emp.xml"

res <- xmlParse(file = f)

print (res)

rootnode <- xmlRoot(res)

# Print the result.
print(rootnode[1])


# Load the packages required to read XML files.
library("XML")
library("methods")

# Give the input file name to the function.
result <- xmlParse(file = "emp.xml")

# Extract the root node form the xml file.
rootnode <- xmlRoot(result)

# Find number of nodes in the root.
rootsize <- xmlSize(rootnode)

# Print the result.
print(rootsize)


library("XML")
library("methods")

# Convert the input xml file to a data frame.
xmldataframe <- xmlToDataFrame("emp.xml")
print(xmldataframe)
