## Load the Training Data into R
X_train <- read.table("train/X_train.txt")
Y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

## Load the Test Data into R
X_test <- read.table("test/X_test.txt")
Y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

## Load the Activity Labels into R
activity_labels <- read.table("activity_labels.txt")

## Load the Features Text file into R
features <- read.table("features.txt")

## Merge the subject & activity identifers with the actual data for the training set
data_train <- cbind(subject_train, Y_train, X_train)

## Merge the subject & activity identifers with the actual data for the test set
data_test <- cbind(subject_test, Y_test, X_test)

## Merge the training and the test data together
dataset <- rbind(data_train, data_test)

## Changing the activity numerics to the actual activity names
for (i in 1:nrow(dataset)) {
  identifier <- dataset[i,2]
  dataset[i,2] <- as.character(activity_labels[identifier,2])
}

## Labeling the data set with descriptive variable names
data_labels <- c("SubjectID", "Activity", as.character(features[,2]))
colnames(dataset) <- data_labels

## Extracting the mean and standard deviation for each measurement, along with the 
## subject ID and activity name
selector <- c(1,2, grep("mean", colnames(dataset)), grep("std", colnames(dataset)))
dataset <- dataset[,selector]

## Creating an independent tidy data set with the average of each variable for each 
## activity and each subject
library(reshape2)
library(dplyr)
temp_data <- melt(dataset, c("SubjectID","Activity"))

tidy_data <- aggregate( value ~ SubjectID + Activity + variable, temp_data, mean)

tidy_data_labels <- c("SubjectID", "Activity", "Features", "Average")
colnames(tidy_data) <- tidy_data_labels
tidy_data[,3] <- as.character(tidy_data[,3])

tidy_data <- arrange(tidy_data, SubjectID, Activity, Features)

## Writing the tidy data to a text file
write.table(tidy_data, file = "tidy_data.txt", row.name=FALSE)
