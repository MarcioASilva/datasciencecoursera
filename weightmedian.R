weightmedian <- function(day,directory){
  file_list <- list.files(directory, full.names = TRUE)
  dat <- data.frame()
  
  for (i in file_list) {
    dat <- rbind(dat, read.csv(file_list[i]))
  }
  
  dat_subset(dat())
}