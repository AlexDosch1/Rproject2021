# load functions in supportingFunctions.R, compile and process data, and answer
  #questions with graphical evidence

# source() to access supportingFunctions.R
source("supportingFunctions.R", local = TRUE)
# use second function to compile the data, input path to a certain directory 
### change input to be two directories in supportingFunctions.R and mash them all up into one  
## ideally (if i can fix the other code)
oneCSV("countryX", "countryY_csv")
# what i might have to resort to
oneCSV("/Users/alexdosch/Desktop/Rproject2021/countryX")
oneCSV("/Users/alexdosch/Desktop/Rproject2021/countryY_csv")

# plot 1: double bar graph, color coded by country with y-axis as markers present?
    # cowplot to show all the data from function 3 actually
library(ggplot)
library(cowplot)

ggplot( #the last few lectures have really helpful examples of syntax)
  
# plot 2: line graph with people infected by day color coded by country
  
# activate cowplot to show the graphs side by side 
  plot_grid(plot1, plot2,
          labels = c("a", "b"),
          rel_widths = c(1, 1),
          ncol = 2,
          nrow = 1)

# Answers to questions
  # 1. whichever country with more markers and more people infected probably 
  # had it first because it's had more time to progress and develop

  # 2. if the markers present are not the same in both countries, no bc the 
  # presence of different markers indicate morphing of the disease
