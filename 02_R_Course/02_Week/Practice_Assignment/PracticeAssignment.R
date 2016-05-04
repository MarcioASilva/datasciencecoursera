#Required to run only once
# dataset_url <- "http://s3.amazonaws.com/practice_assignment/diet_data.zip"
# download.file(dataset_url, "diet_data.zip")
# unzip("diet_data.zip", exdir = "diet_data")

# getwd()
directory <- "~/Projects/DataScienceCoursera/02_R_Course/Week_2/Practice_Assignment/diet_data"

files_full <- list.files(directory, full.names=TRUE)

# andy <- read.csv(files_full[1])

# head(andy)

# length(andy$Day)
# dim(andy)

# str(andy)
# summary(andy)
# names(andy)


# andy[30, "Weight"]
# andy[which(andy$Day == 30), "Weight"]
# subset(andy$Weight, andy$Day==30)

# andy_start <- subset(andy$Weight, andy$Day==1)
# andy_end   <- subset(andy$Weight, andy$Day==30)

# andy_loss  <- andy_start - andy_end
# print(andy_loss)

# files_full[3:5]

# head(read.csv(files_full[3]))

# andy_david <- rbind(andy, read.csv(files_full[2]))
# head(andy_david)
# tail(andy_david)

# print(day_25 <- subset(andy_david$Weight, andy_david$Day==25))
# print(day_25 <- andy_david[which(andy_david$Day == 25), ])

# dat <- data.frame()
# for (i in 1:5) {
#         dat <- rbind(dat, read.csv(files_full[i]))
# }

# str(dat)
# head(dat)

# median(dat$Weight, na.rm=TRUE)

# dat_30 <- dat[which(dat[, "Day"] == 30),]
# dat_30
# median(dat_30$Weight)

# length(files_full)

weightmedian <- function(directory, day) {
# creates a list cof files
  files_full <- list.files(directory, full.names = TRUE)

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