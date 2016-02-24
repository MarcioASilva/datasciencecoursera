directory <- "~//Projects/DataScienceCoursera/02 - R_Course/Week 2/specdata"
files_full <- list.files(directory, full.names = TRUE)

files_full

pollutantmean <- function(directory, pollutant, filenames) {



}


# head(read.csv(files_full[3]))
# andy <- read.csv(files_full[1])
# andy_david <- rbind(andy, read.csv(files_full[2]))
# # head(andy_david)
# # tail(andy_david)

# dat <- data.frame()
# for (i in 1:5){
# 	dat <- rbind(dat, read.csv(files_full[i]))
# }

# # str(dat)
# # dat
# # median(dat$Weight, na.rm=TRUE)

# dat_30 <- dat[which(dat[, "Day"]==30),]
# # dat_30

# weightmedian <- function(directory, day) {
# 	#creates a list of files
# 	files_full <- list.files(directory, full.names = TRUE)

# 	#creates an empty data frame
# 	dat <- data.frame()

# 	#loops through the files, rbinding them together
# 	for (i in 1:5){
# 		dat <- rbind(dat, read.csv(files_full[i]))
# 	}

# 	#subsets the rows that match the 'day' argument
# 	dat_30 <- dat[which(dat[, "Day"] == day),]

# 	 #identifies the median weight while stripping out the NAs
# 	 median(dat_30$Weight, na.rm=TRUE)
# }


# weightmedian(directory,30)

#All this does is to return the number of complete sets from any given file...
pollutantmean <- function(directory, pollutant, id = 1:332) {
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

pollutantmean(directory, "sulfate", files_full)