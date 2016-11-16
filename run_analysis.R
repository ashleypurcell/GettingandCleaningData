#Set Working Directory - Will need to change to your working directory
setwd("C:/Users/ashley.purcell/Dropbox/Coursera/3. Getting and Cleaning Data/Week 4")

#Create a Folder and Download the Files into the folder created
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./data/Assignment.zip")

#Unzip the Files that downloaded
unzip(zipfile = "./data/Assignment.zip", exdir = "./data")

#Read the Training Tables
xtrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("./data/UCI HAR Dataset/train/Y_train.txt")
subjecttrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

#Read the Test Tables
xtest <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("./data/UCI HAR Dataset/test/Y_test.txt")
subjecttest <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

#Read the Features Table
features <- read.table("./data/UCI HAR Dataset/features.txt")

#Read the Activity Labels Table
activitylabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

#Assign Column Names to the Tables
## Train
colnames(xtrain) <- features[,2]
colnames(ytrain) <- "activityId"
colnames(subjecttrain) <-"subjectId"

##Test
colnames(xtest) <- features[,2]
colnames(ytest) <- "activityId"
colnames(subjecttest) <- "subjectId"

##Activity Labels
colnames(activitylabels) <- c("activityId", "activityType")

#Merging the Training and Test Sets to Create One Data Set
mergetrain <- cbind(subjecttrain, xtrain, ytrain)
mergetest <- cbind (subjecttest, xtest, ytest)
finalmerge <- rbind(mergetrain, mergetest)

colNames <- colnames(finalmerge)

#Extract the Mean and Standard Deviation
mean_std <- (grepl("activityId", colNames) |
               grepl("subjectId", colNames) |
               grepl("mean..", colNames) |
               grepl("std..", colNames)
             )
setmeanstd <- finalmerge[, mean_std == TRUE]
setActivityNames <- merge(setmeanstd, activitylabels, by = 'activityId', all.x = TRUE)

# Create a Tidy Data Set
TidySet <- aggregate(. ~subjectId + activityId, setActivityNames, mean)
TidySet <- TidySet[order(TidySet$subjectId, TidySet$activityId),]

# Make a Text File and CSV file of the Tidy Data Set
write.table(TidySet, "TidySet.txt", row.names = FALSE)
write.csv(TidySet, "TidySet.csv")