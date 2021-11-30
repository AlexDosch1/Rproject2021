# custom functions to handle data or summary tasks

# 1. Convert all files in a directory with space- or tab-delimited data (.txt) 
  #into csv files

# use for loop to convert from .txt to .csv
#functions: read.table
           # write.csv/write.table
# if else statement or if you can do like regex in bash but tab: "\t", space: " " 
# exercise 9 has some helpful stuff



# 2. compile data from all .csv files in a directory into a single .csv file
  # file should have original 12 columns, adding "country" and "dayofYear"
  # user should choose to remove/keep rows with NA's (+/- warning)

# use append or something to smash them all together (probably in a for loop)
# if-else statement to put in country and dayofYear?
# use exercise 8 and 9 for user interaction and warnings 



# summarize compiled data in terms of number of screens run, percent of infected 
  # patients screened, male vs. female patients, and age distribution

#maybe write an empty df/matrix and append new data or we can just print it out
  # idk if it needs to be in a table 