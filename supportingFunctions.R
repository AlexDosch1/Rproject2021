# custom functions to handle data or summary tasks

# 1. Convert all files in a directory with space- or tab-delimited data (.txt) 
  #into csv files

# set up directory for new csv files 
dir.create(path = "/Users/alexdosch/Desktop/Rproject2021/countryY_csv")
# write function name with input dir
toCSV <- function(dir){
  # inputs files from a specified path
  directory <- "/Users/alexdosch/Desktop/Rproject2021/countryY"
  ndirectory <- "/Users/alexdosch/Desktop/Rproject2021/countryY_csv"
  
  file_name = list.files(directory, pattern = ".txt")
  
  filestoRead <- paste(directory, file_name, sep="/")
  filestoWrite <- paste(ndirectory, paste0(sub(".txt", "", file_name), ".csv"), sep="/")
  
  for(i in 1:length(filestoRead)){
    temp = read.csv(filestoRead[i], header = TRUE, fill = TRUE)
    write.csv(temp, file = filestoWrite[i])
  }
}

# 2. compile data from all .csv files in a directory into a single .csv file
  # file should have original 12 columns, adding "country" and "dayofYear"
  # user should choose to remove/keep rows with NA's (+/- warning)

# use append or something to smash them all together (probably in a for loop)
# if-else statement to put in country and dayofYear?
# use exercise 8 and 9 for user interaction and warnings 
oneCSV <- function(){
  
}



# summarize compiled data in terms of number of screens run, percent of infected 
  # patients screened, male vs. female patients, and age distribution

#maybe write an empty df/matrix and append new data or we can just print it out
  # idk if it needs to be in a table 