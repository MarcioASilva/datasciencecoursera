setwd("~/Projects/DataScienceCoursera/02_R_Course/Week_2")

files_full <- list.files(full.names = TRUE, pattern = "*.csv")

pollutantmean <- function(directory, pollutant, id = 1:332) {

  # set working directory
    if(grep("specdata", directory) == 1) {
        directory <- ("./specdata/")
    }

    files_full <- list.files(directory, full.names = TRUE, pattern = "*.csv")

  data <- data.frame()

  for (i in id){
  data <- rbind(data, read.csv(files_full[i]), header=T, sep=",")
}

  median(data$pollutant, na.rm=TRUE)

}

pollutantmean(specdata, "sulfate", files_full)