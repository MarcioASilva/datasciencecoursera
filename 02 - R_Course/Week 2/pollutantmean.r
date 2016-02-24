pollutantmean <- function(directory, pollutant, id = 1:332) {

  files_full <- list.files(directory, full.names = TRUE, pattern = "*.csv")

  data <- data.frame()

  for (i in id){
    data <- rbind(data, read.csv(files_full[i]), header=T, sep=",")
  }

  # median(data$sulfate, na.rm=TRUE)
  # median <- current_file[!is.na(current_file[, pollutant]), pollutant]
  median(!is.na(data$sulfate))
  # median <- c(mean_vector, na_removed)

}

# pollutantmean(directory,pollutant, 1:length(files_full))
pollutantmean("specdata", "sulfate", 1:10)
pollutantmean("specdata", "nitrate", 70:72)
pollutantmean("specdata", "nitrate", 23)



# # for(i in id) {
#   current_file <- read.csv(file_paths[i], header=T, sep=",")
#   head(current_file)
#   pollutant
#   na_removed <- current_file[!is.na(current_file[, pollutant]), pollutant]
#   mean_vector <- c(mean_vector, na_removed)
# # }