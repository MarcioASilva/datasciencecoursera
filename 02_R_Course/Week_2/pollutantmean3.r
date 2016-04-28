 directory <- "~/Projects/DataScienceCoursera/02_R_Course/Week_2/specdata"

files_full <- list.files(directory, full.names = TRUE, pattern = "*.csv")

pollutantmean <- function(directory, pollutant, id = 1:332) {

  files_full <- list.files(directory, full.names = TRUE, pattern = "*.csv")

  data <- data.frame()

  for (i in id){
  data <- rbind(data, read.csv(files_full[i]), header=T, sep=",")
}

median(data$sulfate, na.rm=TRUE)

}

pollutantmean(directory, "sulfate", files_full)