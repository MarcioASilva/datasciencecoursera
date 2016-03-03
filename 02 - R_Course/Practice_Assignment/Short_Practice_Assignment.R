files_full <- list.files("~//Projects/DataScienceCoursera/02 - R_Course/Practice_Assignment/Data", full.names = TRUE)
#head(read.csv(files_full[3]))

andy <- read.csv(files_full[1])
andy_david <- rbind(andy, read.csv(files_full[2]))
# head(andy_david)
# tail(andy_david)

dat <- data.frame()
for (i in 1:5){
	dat <- rbind(dat, read.csv(files_full[i]))
}

# str(dat)
# dat
median(dat$Weight, na.rm=TRUE)

dat_30 <- dat[which(dat[, "Day"]==30),]
dat_30

median(dat_30$Weight)