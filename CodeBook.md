---
title: "CodeBook.md"
author: "Terrill Kramer"
date: "August 21, 2015"
output: word_document
---

Codebook
This codebook describes the data, measurements, and columns used to manipulate the originl data set outlined in the Source Data section. The data was subset to include observations consisting of mean and std. deviation data. Meaningful labels were added to each column to improve clarity of the data. The data was melted and dcast to create the tidy data set called TidyMeanData.txt

Source Data
This dataset is derived from the "Human Activity Recognition Using Smartphones Data Set" which was originally made available here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Activity
The string activity name:
	◦	Walking
	◦	Walking Upstairs
	◦	Walking Downstairs
	◦	Sitting
	◦	Standing
	◦	Laying

Subject
the integer subject ID

Measurement
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

tBodyAccMeanX 
tBodyAccMeanY 
tBodyAccMeanZ 
tBodyAccStdDevX 
tBodyAccStdDevY 
tBodyAccStdDevZ 
tGravityAccMeanX 
tGravityAccMeanY 
tGravityAccMeanZ 
tGravityAccStdDevX 
tGravityAccStdDevY 
tGravityAccStdDevZ 
tBodyAccJerkMeanX 
tBodyAccJerkMeanY 
tBodyAccJerkMeanZ 
tBodyAccJerkStdDevX 
tBodyAccJerkStdDevY 
tBodyAccJerkStdDevZ 
tBodyGyroMeanX 
tBodyGyroMeanY 
tBodyGyroMeanZ 
tBodyGyroStdDevX 
tBodyGyroStdDevY 
tBodyGyroStdDevZ 
tBodyGyroJerkMeanX 
tBodyGyroJerkMeanY 
tBodyGyroJerkMeanZ 
tBodyGyroJerkStdDevX 
tBodyGyroJerkStdDevY 
tBodyGyroJerkStdDevZ 
tBodyAccMagMean 
tBodyAccMagStdDev 
tGravityAccMagMean 
tGravityAccMagStdDev 
tBodyAccJerkMagMean 
tBodyAccJerkMagStdDev 
tBodyGyroMagMean 
tBodyGyroMagStdDev 
tBodyGyroJerkMagMean 
tBodyGyroJerkMagStdDev 
fBodyAccMeanX 
fBodyAccMeanY 
fBodyAccMeanZ 
fBodyAccStdDevX 
fBodyAccStdDevY 
fBodyAccStdDevZ 
fBodyAccMeanFreqX 
fBodyAccMeanFreqY 
fBodyAccMeanFreqZ 
fBodyAccJerkMeanX 
fBodyAccJerkMeanY 
fBodyAccJerkMeanZ 
fBodyAccJerkStdDevX 
fBodyAccJerkStdDevY 
fBodyAccJerkStdDevZ 
fBodyAccJerkMeanFreqX 
fBodyAccJerkMeanFreqY 
fBodyAccJerkMeanFreqZ 
fBodyGyroMeanX 
fBodyGyroMeanY 
fBodyGyroMeanZ 
fBodyGyroStdDevX 
fBodyGyroStdDevY 
fBodyGyroStdDevZ 
fBodyGyroMeanFreqX 
fBodyGyroMeanFreqY 
fBodyGyroMeanFreqZ 
fBodyAccMagMean 
fBodyAccMagStdDev 
fBodyAccMagMeanFreq 
fBodyBodyAccJerkMagMean 
fBodyBodyAccJerkMagStdDev 
fBodyBodyAccJerkMagMeanFreq 
fBodyBodyGyroMagMean 
fBodyBodyGyroMagStdDev 
fBodyBodyGyroMagMeanFreq 
fBodyBodyGyroJerkMagMean 
fBodyBodyGyroJerkMagStdDev 
fBodyBodyGyroJerkMagMeanFreq

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'