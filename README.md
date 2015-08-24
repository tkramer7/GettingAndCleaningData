# GettingAndCleaningData

Initial Steps

Set working directory. In your working directory, create a "data" directory. Into the data directory, import the following file and extract: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Data Sets
From the directories train and test, the Data files X_xxxx.txt, y_xxxx.txt, and subject_xxxx.txt (replace xxxx with train and test respectively) were merged into one data set with columns added for subject and activity.

The combined data set was narrowed down to only observations that applied to *mean* and *std* columns.

To this data set, meaningful names were added to each column (e.g. tBodyAccMeanX), as well as columns added for features and activity:
  features: holds the meaningful names of the features, from the features.txt file
  activities: holds the descriptive names of the activities, from the activity_labels.txt file
  
From the mean and std observations, hose variables were further summarized by taking their mean for each subject/activity pair.

The final resulting tidy data set was created in the file tidyMeanData.txt

Additional information

The file CookBook.md explains the structure and meaning of the data. The R script, run_analysis.R is used to create the aforementioned tidayMeanData.txt file.
