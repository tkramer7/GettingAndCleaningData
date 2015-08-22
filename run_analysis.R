
############################################################################################
#Create one R script called run_analysis.R that does the following. 
# 1) Merges the training and the test sets to create one data set.
# 2) Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3) Uses descriptive activity names to name the activities in the data set
# 4) Appropriately labels the data set with descriptive variable names. 
# 5) From the data set in step 4, creates a second, independent tidy data set with the 
#    average of each variable for each activity and each subject.
############################################################################################
library(reshape2)

# Give a name for the file we want to download
filename <- "UCI_HAR_Dataset.zip"

# Download and unzip the dataset. 
# Check to see if the file already exists, if not, download it
if (!file.exists(filename)){
    fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
    download.file(fileURL, filename, method="curl")
}  
# Check to see if the directory already exists, if not, create it and unzip file
if (!file.exists("data")) { 
    unzip(filename, exdir = "./data") 
}

# Load activity labels file into a variable
activityLabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
activityLabels[,2] <- as.character(activityLabels[,2])
#
features <- read.table("./data/UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])
# Make meaningful names for the mean and std observations.
# Only these observations will be used in selecting the observations from the 
# test and train "X" files
meanStdDevCols <- grep(".*mean.*|.*std.*", features[,2])
meanStdDevColsNames <- features[meanStdDevCols,2]
meanStdDevColsNames = gsub('-mean', 'Mean', meanStdDevColsNames)
meanStdDevColsNames = gsub('-std', 'StdDev', meanStdDevColsNames)
meanStdDevColsNames = gsub('[-()]', '', meanStdDevColsNames)

# Load into tables the datasets in train and test directories for Data, Subjects, and Activities
# Only read into the observations dataset the rows we need (mean and std)
trainData <- read.table("./data/UCI HAR Dataset/train/X_train.txt")[meanStdDevCols]
trainActivities <- read.table("./data/UCI HAR Dataset/train/Y_train.txt")
trainSubjects <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
trainCombined <- cbind(trainData, trainSubjects, trainActivities)

testData <- read.table("./data/UCI HAR Dataset/test/X_test.txt")[meanStdDevCols]
testActivities <- read.table("./data/UCI HAR Dataset/test/Y_test.txt")
testSubjects <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
testCombined <- cbind(testData, testSubjects, testActivities)

# merge test and train datasets and add labels to the merged dataset
mergedData <- rbind(trainCombined, testCombined)
colnames(mergedData) <- c(meanStdDevColsNames, "subject", "activity")

# turn activities & subjects into factors
mergedData$activity <- factor(mergedData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
mergedData$subject <- as.factor(mergedData$subject)
#melt data frame to subject and activity id variables
meltedData <- melt(mergedData, id = c("subject", "activity"))
#create data frame from the melted data frame
meanData <- dcast(meltedData, subject + activity ~ variable, mean)
# write out the new tidy dataset consisting of average values of the selected mean and std. deviation columns
write.table(meanData, "tidyMeanData.txt", row.names = FALSE, quote = FALSE)
