# Getting And Cleaning Data Course Project

First, the algorithm merges the subject and activity identifiers with the actual measurement data into a single data frame for both the training and train data.

Next, both the training and the test data frames are merged together.

After that, the identifier for the activity label in the merged data frame is replaced with the actual activity name. 

Then, the descriptive column labels were added to the merged data frame.

Following which, a subset of the merged data is extracted such that the subset data frame only contains the subject identifier, activity identifier, and columns that have "mean" or "std" in their names.

Finally, the algorithm creates a tidy data set which contains only the average for each variable that correspond to each activity and each subject. This tidy data set is written into a text file.
