directory <- "~/Projects/DataScienceCoursera/02_R_Course/Week_2/specdata"
files_full <- list.files(directory, full.names = TRUE)

complete <- function(directory, id = 1:332) {

  completeCases <- data.frame()

  #loops through the files, rbinding them together
  for (i in id){
    print(sum(complete.cases(read.csv(files_full[i]))))
    completeCases <- c(completeCases)
  }

}

complete(directory, 1)
complete(directory, c(2, 4, 8, 10, 12))
complete(directory, 30:25)
complete(directory, 3)