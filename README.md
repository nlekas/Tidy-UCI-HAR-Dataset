Tidy-UCI-HAR-Dataset
====================

This code will tidy up the UCI HAR Dataset found here:  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

**HOW TO USE THIS CODE**

1. Download the UCI HAR Dataset found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
- Extract the UCI HAR Dataset into a folder named **UCI HAR Dataset** in your working directory.
- Download the **run_analysis.R** file in this repo into your working directory.
- Source run_analysis.R into your environment.
- Install the **plyr** package for R.
- Add **plyr** to the library of the current environment.
- Run the function **run_analysis()**
- The tidy data set will output to the working directory as a text file.

**WHAT DOES RUN_ANALYSIS() DO?**

1. Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement.
- Uses descriptive activity names to name the activities in the data set.
- Appropriately labels the data set with descriptive variable names.
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.



**ATTRIBUTIONS**

This code was written as part of the Data Science Specialization on Coursera for the Getting and Cleaning Data class. The 
frame work of the code was provided by the professor of the course and parts of it were collaboratively worked out by many students in the class discussion forums.