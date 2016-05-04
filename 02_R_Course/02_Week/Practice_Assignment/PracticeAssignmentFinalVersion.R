directory <- "~/Projects/DataScienceCoursera/02_R_Course/Week_2/Practice_Assignment/diet_data"

files_full <- list.files(directory, full.names = TRUE)

weightmedian <- function(directory, day) {

	#creates an empty data frame
	dat <- data.frame()

	#loops through the files, rbinding them together
	for (i in 1:length(files_full)){
		dat <- rbind(dat, read.csv(files_full[i]))
	}

	#subsets the rows that match the 'day' argument
  dat_subset <- dat[which(dat[, "Day"] == day),]

  #identifies the median weight while stripping out the NAs
  median(dat_subset[, "Weight"], na.rm=TRUE)
}

weightmedian(directory = "diet_data", day = 20)
weightmedian("diet_data", 4)
weightmedian("diet_data", 17)