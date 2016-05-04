directory       <- "~/Projects/DataScienceCoursera/02_R_Course/Week_2/specdata"
files_full      <- list.files(directory, full.names = TRUE, pattern = "*.csv")

pollutantmean   <- function(directory, pollutant, id = 1:332) {

    #creates an empty data frame
    dat <- data.frame()

    #loops through the files, rbinding them together
    for (i in id){
        dat <- rbind(dat, read.csv(files_full[i]))
    }

    means   <- NA
    if (pollutant == "sulfate") {
        means <- round(mean(dat[, "sulfate"], na.rm=TRUE), digits = 3)
    }
    else {
        means <- round(mean(dat[, "nitrate"], na.rm=TRUE), digits = 3)
    }
}

# result   <-  pollutantmean(directory, "sulfate", 1:10)
# result

# result   <-  pollutantmean(directory, "nitrate", 70:72)
# result

# result   <-  pollutantmean(directory, "nitrate", 23)
# result

# result   <-  pollutantmean(directory, "sulfate", 34)
# result

result   <-  pollutantmean(directory, "nitrate")
result