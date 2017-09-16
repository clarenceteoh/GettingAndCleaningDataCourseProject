# Codebook
## Variables that were used for loading and storing the raw input data
'X_train' stores the training data from "train/X_train.txt"

'Y_train' stores the training label data from "train/y_train.txt"

'subject_train' stores the training subject identifier data from "train/subject_train.txt"

'X_test' stores the test data from "test/X_test.txt"

'Y_test' stores the test label data from "test/y_test.txt"

'subject_test' stores the test subject identifier data from "test/subject_test.txt"

'activity_labels' stores the list of activity labels from "activity_labels.txt"

'features' stores the list of features from "features.txt"

## Variables containing processed data
'data_train' contains the merged data for the subject identifiers, activity identifiers and the feature measurements of the training set

'data_test' contains the merged data for the subject identifiers, activity identifiers and the feature measurements of the test set

'dataset' contains the merged data for both the training and test sets

'temp_data' contains the intermediate data set after using melt() on 'dataset' during the process of creating the tidy data set

'tidy_data' is the data set showing only the subject & activity indentifiers, the feature name and the average measurement of each feature

## Variables that were used for processing data
"identifier" contains the list of activity identifiers (in terms of numerics)

'data_labels' contains a list of names: Starting with "SubjectID", "Activity", followed by the names of each feature

'selector' returns the index of the column names that contain only "mean" or "std"

'tidy_data_labels' contains a list of names to be used as the column names of the tidy data set
