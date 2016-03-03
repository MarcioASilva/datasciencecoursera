#Practice Assignment

#dataset_url <- "http://s3.amazonaws.com/practice_assignment/diet_data.zip"
#download.file(dataset_url, "diet_data.zip")
#unzip("diet_data.zip", exdir = "~//Projects//R_Course//Practice_Assignment")

#setwd("~//Projects//R_Course//Practice_Assignment")
files_list <- list.files("~//Projects//R_Course//Practice_Assignment")
andy <- read.csv(files_list[1])
#head(andy)
#length(andy$Day)
#dim(andy)
#str(andy)
#summary(andy)
#names(andy)[2]
#andy[30, "Weight"]

#andy_start <- andy[1, "Weight"]
#andy_end <- andy[30, "Weight"]
#andy_loss <- andy_end - andy_start
head(read.csv(file_list[3]))
