completeVersion1 <- function(directory, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files

        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used

        ## Return a data frame of the form:
        ## id nobs
        ## 1  117
        ## 2  1041
        ## ...
        ## where 'id' is the monitor ID number and 'nobs' is the
        ## number of complete cases

        files_list  <- list.files(directory, full.names=TRUE)
        dat <- data.frame()

        for (i in id){
          dat <- rbind(dat, read.csv(files_list[i]))
          dat_subset <- dat[complete.cases(dat),]
          print(nrow(dat_subset))
        }
}

completeVersion2 <- function(directory, id = 1:332) {
  id_len <- length(id)
  complete_data <- rep(0, id_len)
  # find all files in the specdata folder
  all_files <- as.character( list.files(directory) )
  file_paths <- paste(directory, all_files, sep="")
  j <- 1
  for (i in id) {
    current_file <- read.csv(file_paths[i], header=T, sep=",")
    complete_data[j] <- sum(complete.cases(current_file))
    j <- j + 1
  }
  result <- data.frame(id = id, nobs = complete_data)
  return(result)
}

#All this does is to return the number of complete sets from any given file...
completeVersion3 <- function(directory, id = 1:332) {
  completeCases <- vector(mode = "integer", length = 0)
  filenames <- list.files(directory, pattern = "*.csv", full.names = TRUE)
  for(i in id) {
    data <- read.csv(filenames[i])
    ok <- complete.cases(data)
    completeCases <- c(completeCases, sum(ok))
  }
  return(data.frame(id = id, nobs = completeCases))
}

win_directory   <-      "c:\\specdata"
mac directory   <-      "./data/specdata/"
pollutant       <-      "sulfate"
id              <-      c(1:10)

complete(path, id)