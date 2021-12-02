# custom functions to handle data or summary tasks

# 1. Convert all files in a directory with space- or tab-delimited data (.txt) 
  #into csv files


# write function name with input dir
toCSV <- function(dir){
  # set up directory for new csv files 
  dir.create(path = "/Users/alexdosch/Desktop/Rproject2021/countryY_csv")
  # inputs files from a specified path (set by user)
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

oneCSV <- function(path){
  # define set of files
  files <- list.files(path, pattern = ".csv")
  # open each file
  for (i in files){
  read.csv("files[i]", header = TRUE, stringsAsFactors = FALSE) ### this has invalid description argument error and idk why
  # add columns "country" and "dayofYear"
  with_columns <- file[i]$country <- c("X")
  with_columns <- file[i]$dayofYear <- c(120:175)
  }
  # append/combine the new files
  allData <- lapply(with_columns, function (x) read.csv(file=x, header=TRUE))
  Reduce(function(x,y) merge(x,y), allData)
  
  # handle NA's [argument] --> user interaction ###Should this go at the top?
  print("Data may contain NA's")
  answer <-readline("If you would like to remove NA's reply REMOVE. If you would like to keep NA's reply KEEP")
  if (answer!="REMOVE") {
    #code to remove NA's 
    na.omit(allData)
  } else if (answer!="KEEP") {
    answer <- readline("Print warning if NA's are found? Y or N")
    if (answer!="Y"){
      # code to find NA's in data and print warning
      if (is.na(allData)=TRUE){
        print("Warning: missing values")
      }
    } else {
    break
    }
  }
}


# summarize compiled data in terms of number of screens run, percent of infected 
  # patients screened, male vs. female patients, and age distribution

# 

