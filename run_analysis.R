library(dplyr)


if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")

#Unzip dataSet to /data directory
unzipped <- unzip(zipfile="./data/Dataset.zip",exdir="./data")

# Read trainings tables
features_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
activity_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

# Read testing tables
features_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
activity_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

# Read features
feature_names <- read.table("./data/UCI HAR Dataset/features.txt", col.names=c("featureId", "feature_label"))


# Read activity labels
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", col.names=c("activityId", "activity_label"))


# Merge the training and the test sets to create one data set and name them


subject <- rbind(subject_train, subject_test)
activity <- rbind(activity_train, activity_test)
features <- rbind(features_train, features_test)


colnames(features) <- t(feature_names[2])
colnames(activity) <- "ActivityID"
colnames(subject) <- "SubjectID"

activity$activitylabel <- factor(activity$ActivityID, labels = as.character(activity_labels[,2]))
activitylabel <- activity[,-1]


# Extract only measurements on the mean and standard deviation and name them 
mean_sd_features <- feature_names[grep("mean\\(\\)|std\\(\\)", feature_names[,2]),]
features <- features[, mean_sd_features[,1]]


# create a second, independent tidy data set with the average of each variable for each activity and each subject.
library(data.table)
total <- cbind (subject, activity, features)
total_mean <- total %>% group_by(activitylabel, SubjectID) %>% summarize_all(funs(mean))
write.table(total_mean, "./data/tidy_data.txt")




