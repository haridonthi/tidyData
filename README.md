---
title: "README.md"
output: html_document
---

**This document explains the steps that were taken from the raw data to create the Tidy dataset.**

1. Merges the training and the test sets to create one data set.
    * cbind with X_ and y_
    * keep only mean() and std()
    * rbind X_test.txt and X_train.txt
2. Extracts only the measurements on the mean and standard deviation for each measurement.
    * features.txt %in% mean(), std()
3. Uses descriptive activity names to name the activities in the data set
    * cbind with y_test
    * merge y_test in activity_labels
4. Appropriately labels the data set with descriptive variable names. 
    * create space separated camel case columns and add to first row
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
    * extract only variables with %in% mean() in variable names