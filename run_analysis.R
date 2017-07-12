# run_analysis.R 

# Download & Unzip data
library(dplyr)
# download zip file
Url<- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dest<-"UCI HAR Dataset.zip"

if(!file.exists(dest)){
	download.file(Url ,dest, mode="wb")
}

# unzip the zip file 
datastore <- "UCI HAR Dataset"
if(!file.exists(datastore)) {
	unzip(dest)
}

# Read data

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

features<-read.table("./UCI HAR Dataset/features.txt")
activities<-read.table("./UCI HAR Dataset/activity_labels.txt")


#############################################################################
#1. Merge the training and the test sets to create one data set.

# create 'x' data set
X_data <- rbind(X_train, X_test)

# create 'y' data set
y_data <- rbind(y_train, y_test)

# create subject data set
subject_data <- rbind(subject_train, subject_test)

colnames(X_data) <- c(features[,2])
colnames(y_data) <- "activity"
colnames(subject_data) <- "subject"

##############################################################################
#2. Extract only the measurements on the mean and the sd for each measurement.
target_features <- grep(".*mean.*|.*std.*", features[,2])

# subset the target columns
X_data <- X_data[,target_features]

# Set the Column names
names(X_data) <- features[target_features, 2]
singledata <- cbind(X_data, y_data, subject_data)

##############################################################################
#3. Use descriptive activity names to name the activities in the data set.

# Substitue activity values to factor level activity names
singledata$activity <- factor(singledata$activity, 
levels = activities[,1], labels=activities[,2])


##############################################################################
#4. Appropriately label the data set with descriptive variable names.
names(singledata) <- gsub("^t", "time", names(singledata))
names(singledata) <- gsub("^f", "frequency", names(singledata))
names(singledata) <- gsub("^BodyBody", "Body", names(singledata))
names(singledata) <- gsub("^Mag", "Magnitude", names(singledata))
names(singledata) <- gsub("^Gyro", "Gyroscope", names(singledata))
names(singledata) <- gsub("^Acc", "Accelerometer", names(singledata))


##############################################################################
#5. Create a second, independent tidy data set with the average of each variable 
# for each activity and each subject.

# group by subject and activity
EachMeans <- singledata %>%
	group_by(subject, activity) %>%
	summarise_all(funs(mean))

# print out "tidy_data.txt"
write.table(EachMeans, "tidy_data.txt", row.name=FALSE)