run_analysis <- function(){
    ## This function is for linux operating systems only.
    ## This function assumes you unzipped the UCI HAR Dataset into your working directory into a folder
    ## name UCI HAR Dataset.
    
    require(plyr)

    ## STEP 1: MERGE DATA SETS

        ## Read in the test data set
        x_test <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE, sep = "")
        y_test <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE, sep = "")
        subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE, sep = "")
        
        ## Read in the train data set
        x_train <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE, sep = "")
        y_train <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE, sep = "")
        subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE, sep = "")
        
        ## Read in features.txt and activity_labels.txt as strings
        features <- read.table("UCI HAR Dataset/features.txt", header = FALSE, sep = "", stringsAsFactors=FALSE)
        activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE, sep = "", stringsAsFactors=FALSE)
        
        ## Bind test and train data sets
        test_data <- cbind(cbind(x_test, subject_test), y_test)
        train_data <- cbind(cbind(x_train, subject_train), y_train)
        merged_data <- rbind(train_data, test_data)
            
        ## Label complete data
        labels <- rbind(rbind(features, c(562, "Subject")), c(563, "Activity"))[,2]
        names(merged_data) <- labels
    
    ## STEP 2: EXTRACT ONLY THE MEASUREMENTS ON THE MEAN AND STANDARD DEVIATION FOR EACH MEASUREMENT
        
        ## Remove columns that don't contain the words mean, std, Subject, or ActivityId.
        data_mean_std <- merged_data[,grepl("mean|std|Subject|Activity", names(merged_data))]
        
        ## Remove meanFreq columns
        bad <- data_mean_std[,grepl("meanFreq", names(data_mean_std))]
    
    ## STEP 3: APPLY DESCRIPTIVE ACTIVITY NAMES TO THE ACTIVITIES IN THE DATA SET
        
        data_mean_std[,81] <- gsub(6, "Laying", data_mean_std[,81])
        data_mean_std[,81] <- gsub(5, "Standing", data_mean_std[,81])
        data_mean_std[,81] <- gsub(4, "Sitting", data_mean_std[,81])
        data_mean_std[,81] <- gsub(3, "Walking_Downstairs", data_mean_std[,81])
        data_mean_std[,81] <- gsub(2, "Walking_Upstairs", data_mean_std[,81])
        data_mean_std[,81] <- gsub(1, "Walking", data_mean_std[,81])
    
    ## STEP 4: APPROPRIATELY LABEL VARIABLES
    
        ## Remove parentheses from column names
        names(data_mean_std) <- gsub('\\(|\\)',"",names(data_mean_std), perl = TRUE)
        
        ## Expand abbreviated words in column names
        names(data_mean_std) <- gsub('Acc',"Acceleration",names(data_mean_std))
        names(data_mean_std) <- gsub('GyroJerk',"AngularAcceleration",names(data_mean_std))
        names(data_mean_std) <- gsub('Gyro',"AngularSpeed",names(data_mean_std))
        names(data_mean_std) <- gsub('Mag',"Magnitude",names(data_mean_std))
        names(data_mean_std) <- gsub('^t',"TimeDomain.",names(data_mean_std))
        names(data_mean_std) <- gsub('^f',"FrequencyDomain.",names(data_mean_std))
        names(data_mean_std) <- gsub('\\.mean',".Mean",names(data_mean_std))
        names(data_mean_std) <- gsub('\\.std',".StandardDeviation",names(data_mean_std))
        names(data_mean_std) <- gsub('Freq\\.',"Frequency.",names(data_mean_std))
        names(data_mean_std) <- gsub('Freq$',"Frequency",names(data_mean_std))
        
        ## Make syntactically valid column names
        names(data_mean_std) <- make.names(names(data_mean_std), allow_ = TRUE, unique = TRUE)
        
    ## STEP 5: FROM THE DATA SET IN STEP 4, CREATE A INDEPENDANT TIDY DATA SET
    ## WITH THE AVERAGE OF EACH VARIABLE FOR EACH ACTIVITY AND EACH SUBJECT
        
        data_avg_by_act_sub = ddply(data_mean_std, c("Subject","Activity"), numcolwise(mean))
        write.table(data_avg_by_act_sub, row.name=FALSE, file = "UCI_HAR_Tidy_Data.txt")
}