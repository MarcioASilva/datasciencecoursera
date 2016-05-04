directory               <- "~/Projects/DataScienceCoursera/02_R_Course/Week_2/specdata"
files = list.files(path=directory, pattern="*.csv")

corr <- function(directory, threshold = 0) {
   correlations <- numeric()

   for (i in files) {
      data <- read.csv(paste(directory, "/", i, sep = ""))

      selectedCols <- data[,2:3]
      validCols <- selectedCols[rowSums(is.na(selectedCols)) == 0, ]

      if (nrow(validCols) > threshold) {
         correlations <- append(correlations, cor(validCols[1], validCols[2]))
      }
   }

   correlations
}

cr <- corr("specdata", 2000)
n <- length(cr)
cr <- corr("specdata", 1000)
cr <- sort(cr)
print(c(n, round(cr, 4)))