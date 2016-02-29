directory <- "~/Projects/DataScienceCoursera/02 - R_Course/Week 2"
files_full <- list.files(directory, full.names = TRUE, pattern = "*.csv")

pollutantmean <- function(directory, pollutant, id = 1:332) {

  files_full <- list.files(directory, full.names = TRUE, pattern = "*.csv")

  data <- data.frame()

  for (i in id){
    data <- rbind(data, read.csv(files_full[i]), header=T, sep=",")
  }

  median(data$sulfate, na.rm=TRUE)
#   # median <- current_file[!is.na(current_file[, pollutant]), pollutant]
#   median(!is.na(data$sulfate))
#   # median <- c(mean_vector, na_removed)

}

# pollutantmean(directory,pollutant, 1:length(files_full))
# pollutantmean("specdata", "sulfate", 1:10)
# pollutantmean("specdata", "nitrate", 70:72)
# pollutantmean("specdata", "nitrate", 23)



# # for(i in id) {
#   current_file <- read.csv(file_paths[i], header=T, sep=",")
#   head(current_file)
#   pollutant
#   na_removed <- current_file[!is.na(current_file[, pollutant]), pollutant]
#   mean_vector <- c(mean_vector, na_removed)
# # }

#All this does is to return the number of complete sets from any given file...
pollutantmean2 <- function(directory, pollutant, id = 1:332) {
  means <- NA
  filenames <- list.files(directory, pattern = "*.csv", full.names = TRUE)
  for(i in id) {
    data <- read.csv(filenames[i])
    if(pollutant == "sulfate") {
      means <- c(means, data$sulfate)
    }
    else {
      means <- c(means, data$nitrate)
    }
  }
  mean(means, na.rm = TRUE)
}

pollutantmean2(directory, "sulfate", files_full)