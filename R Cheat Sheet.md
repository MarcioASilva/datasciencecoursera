R Cheat Sheet
============

  * table(dataset$Field)
  * prop.table(table(dataset$Field))
  * prop.table(table(dataset$Field1, dataset$Field2))
  * prop.table(mytable, 1) # row percentages
  * prop.table(mytable, 2) # column percentages

  * # As row-wise proportions
  * > prop.table(table(train$Sex, train$Survived), 1)

  * files_full <- list.files("~/Path", full.names = TRUE)
  * head(read.csv(files_full[3]))
  * andy <- read.csv(files_full[1])
  * andy_david <- rbind(andy, read.csv(files_full[2]))

  * Create a Data Frame
  * dat <- data.frame()
  * for (i in 1:5){
  *   dat <- rbind(dat, read.csv(files_full[i]))
  * }

  * loops through the files, rbinding them together
  * for (i in 1:5){
  *   dat <- rbind(dat, read.csv(files_full[i]))
  * }

  * str(dat)
  * median(dat$Weight, na.rm=TRUE)
  * dat_30 <- dat[which(dat[, "Day"]==30),]

  * subsets the rows that match the 'day' argument
  * dat_30 <- dat[which(dat[, "Day"] == day),]

  * identifies the median weight while stripping out the NAs
  * median(dat_30$Weight, na.rm=TRUE)

  * Get Working Directory
  * getwd()

  * Data Frame Dimension
  * dim(andy)

  * Sample of the beggining
  * head(andy)

  * Sample of the end
  * tail(andy_david)

  * Summary
  * summary(andy)

  * Structure
  * str(andy)

  * Field Names
  * names(andy)



2nd paragraph. *Italic*, **bold**, and `monospace`. Itemized lists
look like:

  * this one
  * that one
  * the other one

Note that --- not considering the asterisk --- the actual text
content starts at 4-columns in.

