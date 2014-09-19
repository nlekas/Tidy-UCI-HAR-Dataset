## This function assumes you unzipped the UCI HAR Dataset into your working directory.
## The dataset files should be in the following folders inside your working directory:
## - UCI HAR Dataset
## --features.txt
## -- NEED TO FLESH OUT WITH COMPLETE EXPECT FILE STRUCTURE

run_analysis <- function(){

    ## Clean up after any old vectors
    ## rm(c("x_test", "y_test", "x_train", "y_train", "subject_train", "subject_test", "features", "activity_labels"))

    ## Read in the test data set
    x_test <- read.delim2("UCI HAR Dataset/test/X_test.txt", header = FALSE, sep = " ")
    y_test <- read.delim2("UCI HAR Dataset/test/y_test.txt", header = FALSE, sep = " ")
    subject_test <- read.delim2("UCI HAR Dataset/test/subject_test.txt", header = FALSE, sep = " ")
    
    ## Read in the train data set
    x_train <- read.delim2("UCI HAR Dataset/train/X_train.txt", header = FALSE, sep = " ")
    y_train <- read.delim2("UCI HAR Dataset/train/y_train.txt", header = FALSE, sep = " ")
    subject_train <- read.delim2("UCI HAR Dataset/test/subject_test.txt", header = FALSE, sep = " ")
    
    ## Read in features.txt and activity_labels.txt.
    features <- read.delim2("UCI HAR Dataset/features.txt", header = FALSE, sep = " ")
    activity_labels <- read.delim2("UCI HAR Dataset/activity_labels.txt", header = FALSE, sep = " ")
}