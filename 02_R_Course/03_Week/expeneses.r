directory   <- "~/Projects/DataScienceCoursera/02_R_Course/03_Week/bankData"
files = list.files(path=directory, pattern="*.csv")

importData <- function(directory) {
   data <- data.frame()

   for (i in files) {
      data <- read.csv(paste(directory, "/", i, sep = ""))
   }
}

print(importData(directory))