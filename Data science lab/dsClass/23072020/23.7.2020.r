

# READING CSV FILE

datacsv <- read.csv(file = "C:\\Users\\KWASI\\Documents\\books\\MastersCUTN\\3rd Sem\\Data science\\Class\\23072020\\inputS.csv",stringsAsFactors = FALSE)
print(datacsv)

# READING TXT FILE WHERE VALUES ARE SEPERARTED BY SPACES

datatxt<-read.delim(file = "C:\\Users\\KWASI\\Documents\\books\\MastersCUTN\\3rd Sem\\Data science\\Class\\23072020\\inputs.txt", stringsAsFactors = FALSE)
print(datatxt)

# READING TXT FILE WHERE VALUES ARE SEPERARTED BY '/' OR ANY OTHER THING

dataother<-read.table("inputsother.txt",
           header = TRUE,
           sep = "/",
           stringsAsFactors = FALSE)

print(dataother)


datacsv <- read.csv2("inputsfloat.csv",stringsAsFactors = FALSE)
print(datacsv)



# We can also use read table INSTEAD OF READ CSV

datat<-read.table("inputs.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
print(datat)

# To read table manual

?read.csv2


R.version.string
