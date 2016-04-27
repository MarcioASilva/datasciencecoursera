importFiles <- function(directory) {
  #creates a list of files
  files_full <- list.files(directory, full.names = TRUE)

  #creates an empty data frame
  dat <- data.frame()

  #loops through the files, rbinding them together
  for (i in 1:5){
    dat <- rbind(dat, read.csv(files_full[i]))
  }

#   #subsets the rows that match the 'day' argument
#   dat_30 <- dat[which(dat[, "Day"] == day),]

#    #identifies the median weight while stripping out the NAs
#    median(dat_30$Weight, na.rm=TRUE)
}

directory <- "/Users/Marcio/Projects/DataScienceCoursera/02 - R_Course/Practice_Assignment/Data/Bank"
importFiles(directory)