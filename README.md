
**Creating a Tidy dataset from a raw dataset**

_Course Project Instructions:_

You should create one R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

*run_analysis.R:*

1. Read the columns from features.txt and get the columns we are interested in, i.e., features with substring "mean" or "std".
2. Read X_test and select the columns we want. Name the columns with feature names so they are more readable.
3. Read y_test and add that column to the dataset (using cbind)
4. Do steps 2 and 3 for the Training dataset as well (using X_train and y_train)
5. Combine the Test and Train datasets.
6. Read the activity code lookup in activity.txt
7. Merge the combined dataset with activity code lookup so the dataset has readable activity names.

*run_analysis.R uses the following files in the raw data:*

1. X_test.txt, y_test.txt, X_train.txt, y_train.txt - Test and Training data & labels
2. features.txt: Feature names (aka variable names / column names)
3. activity_labels.txt: For looking up activity Ids