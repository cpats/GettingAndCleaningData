library(dplyr)

# 0. Preliminaries

# Create folder named data if it does not exist yet
if(!file.exists("./data")) 
     dir.create("./data")

# Download the zip file from the given URL if UCI HAR Dataset does not exist
# Save it to datasets.zip
# Unzip file 
if (!file.exists("./data/UCI HAR Dataset")) {
     fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
     download.file(fileUrl, destfile = "./data/datasets.zip") 
  
     unzip("./data/datasets.zip", exdir = "./data")
}

# Read data from file and load into R

# train Data
trainSubject <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
trainValues_x <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
trainActivities_y <- read.table("./data/UCI HAR Dataset/train/y_train.txt")

# test data
testSubject <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
testValues_x <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
testActivities_y <- read.table("./data/UCI HAR Dataset/test/y_test.txt")



# Project Task
# 1. Merge the training and the test sets to create one data set.
trainData <- cbind(trainSubject, trainActivities_y, trainValues_x)
testData <- cbind(testSubject, testActivities_y, testValues_x)
mergedData <- rbind(trainData, testData)

# memory cleanup
rm(trainSubject, trainValues_x, trainActivities_y)
rm(testSubject, testValues_x, testActivities_y)
rm(trainData, testData)


# Project Task
# 2. Extract only the measurements on the mean and standard deviation for each measurement.

#read features.txt and use only mean and standard deviation for the measurements
featureName <- read.table("./data/UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)[,2]
featuresMeanStd <- grep(".*mean.*|.*std.*", featureName)
finalData <- mergedData[, c(1, 2, featuresMeanStd+2)]
colnames(finalData) <- c("subject", "activity", featureName[featuresMeanStd])

# memory cleanup
rm(featureName, featuresWanted)

# Project Task
# 3. Use descriptive activity names to name the activities in the data set

# read activity_labels.txt to get the descriptive activity names. Replace the values 1 to 6 with the corresponding activity names
activityName <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
finalData$activity <- factor(finalData$activity, levels = activityName[,1], labels = activityName[,2])

# Project Task
# 4. Label the data set with descriptive variable names.

# replace the current variable names with more readable/descriptive names
# Note: call gsub("Freq", "Frequency", ...) before gsub("^f", "Frequency", ...) to avoid getting names like "Frequencyuency..."
names(finalData) <- gsub("\\()", "", names(finalData))
names(finalData) <- gsub("Freq", "Frequency", names(finalData))
names(finalData) <- gsub("^t", "Time", names(finalData))
names(finalData) <- gsub("^f", "Frequency", names(finalData))
names(finalData) <- gsub("Acc", "Accelerometer", names(finalData))
names(finalData) <- gsub("Gyro", "Gyroscope", names(finalData))
names(finalData) <- gsub("Mag", "Magnitude", names(finalData))
names(finalData) <- gsub("-mean", "Mean", names(finalData))
names(finalData) <- gsub("-std", "StandardDeviation", names(finalData))
names(finalData) <- gsub("BodyBody", "Body", names(finalData)) # to correct typo



# Project Task
# 5. Create a second, independent tidy data set with the average of each variable
#    for each activity and each subject from the data set in step 4.

# group by subject and activity and use summarise_all to get average (mean) 
# used dplyr functionalities
activityMeans <- finalData %>% 
  group_by(subject, activity) %>%
  summarise_all(funs(mean))


# create the file tidy_data.txt
write.table(activityMeans, "tidy_data.txt", row.names = FALSE)
