directory <- "~/Projects/DataScienceCoursera/02_R_Course/Week_2/specdata"

files_full <- list.files(directory, full.names = TRUE)

pollutantmean <- function(directory, pollutant, id = 1:332) {

    #creates an empty data frame
    dat <- data.frame()

    #loops through the files, rbinding them together
    for (i in id){
        dat <- rbind(dat, read.csv(files_full[i]))
    }

    means   <- NA
    if(pollutant == "sulfate") {
        means <- round(mean(dat[, "sulfate"], na.rm=TRUE), digits = 3)
    }
    else{
        means <- round(mean(dat[, "nitrate"], na.rm=TRUE), digits = 3)
    }
}

pollutantmean(directory, "sulfate", 1:10) == 4.064
pollutantmean(directory, "nitrate", 70:72) == 1.706
pollutantmean(directory, "nitrate", 23) == 1.281