directory <- "~/Projects/DataScienceCoursera/02_R_Course/Week_2/specdata"
files_full <- list.files(directory, full.names = TRUE)

corr <- function(directory, threshold = 0) {


  cor(x, y)

}

complete <- function(directory, id = 1:332) {

  completeCases <- data.frame()

  #loops through the files, rbinding them together
  for (i in id){
    print(sum(complete.cases(read.csv(files_full[i]))))
    completeCases <- c(completeCases)
  }

}

cr <- corr(directory, 150)
head(cr)

# summary(cr)

# cr <- corr(directory, 400)
# head(cr)

# summary(cr)

# cr <- corr(directory, 5000)
# summary(cr)

# length(cr)

# cr <- corr(directory)
# summary(cr)

# length(cr)