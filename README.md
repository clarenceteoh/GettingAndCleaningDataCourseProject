### Getting And Cleaning Data Course Project

## Inputs Required
'features.txt': List of all features.
'activity_labels.txt': Links the class labels with their activity name.
'train/X_train.txt': Training set.
'train/y_train.txt': Training labels.
'train/subject_train.txt: Training subject labels
'test/X_test.txt': Test set
'test/y_test.txt': Test labels
'test/subject_test.txt: Test subject labels

## Output Produced
A data set containing the average for each feature measurement that corresponds to each activity and subject. This data set is written into a text file, tidy_data.txt

## Algorithm Sequence
First, the algorithm merges the subject and activity identifiers with the actual measurement data into a single data frame for both the training and train data.

Next, both the training and the test data frames are merged together.

After that, the identifier for the activity label in the merged data frame is replaced with the actual activity name. 

Then, the descriptive column labels were added to the merged data frame.

Following which, a subset of the merged data is extracted such that the subset data frame only contains the subject identifier, activity identifier, and columns that have "mean" or "std" in their names.

Finally, the algorithm creates a tidy data set which contains only the average for each feature measurement that corresponds to each activity and each subject. This tidy data set is written into a text file.
