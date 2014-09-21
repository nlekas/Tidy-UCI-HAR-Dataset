UCI HAR Tidy Data Code Book
======================

OVERVIEW OF THE DATA: 
-------

>Human Activity Recognition Using Smartphones Dataset Version 1.0
>Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
>Smartlab - Non Linear Complex Systems Laboratory
>DITEN - Università degli Studi di Genova.
>Via Opera Pia 11A, I-16145, Genoa, Italy.
>activityrecognition@smartlab.ws
>www.smartlab.ws

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

For more information on the original dataset and the dataset itself here:

**Dataset info:** http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

**Dataset:** https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


OVERVIEW OF THE VARIABLES AND FEATURES BEFORE TRANSFROMATION 
----------------

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation
- mad(): Median absolute deviation 
- max(): Largest value in array
- min(): Smallest value in array
- sma(): Signal magnitude area
- energy(): Energy measure. Sum of the squares divided by the number of values. 
- iqr(): Interquartile range 
- entropy(): Signal entropy
- arCoeff(): Autorregresion coefficients with Burg order equal to 4
- correlation(): correlation coefficient between two signals
- maxInds(): index of the frequency component with largest magnitude
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency
- skewness(): skewness of the frequency domain signal 
- kurtosis(): kurtosis of the frequency domain signal 
- bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
- angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

- gravityMean
- tBodyAccMean
- tBodyAccJerkMean
- tBodyGyroMean
- tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt' in the UCI HAR Dataset.

OVERVIEW OF THE VARIABLES AND FEATURES AFTER TRANSFROMATION 
----------------

**Transformation:**

1. Merge the training and the test sets to create one data set.
- Extract only the measurements on the mean and standard deviation for each measurement.
- Apply descriptive activity names to name the activities in the data set.
- Appropriately label the data set with descriptive variable names.
- From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject output as a text file.

Variables in the clean data set:

[1] "TimeDomain.BodyAcceleration.mean.X"                                
 [2] "TimeDomain.BodyAcceleration.mean.Y"                                
 [3] "TimeDomain.BodyAcceleration.mean.Z"                                
 [4] "TimeDomain.BodyAcceleration.std.X"                                 
 [5] "TimeDomain.BodyAcceleration.std.Y"                                 
 [6] "TimeDomain.BodyAcceleration.std.Z"                                 
 [7] "TimeDomain.GravityAcceleration.mean.X"                             
 [8] "TimeDomain.GravityAcceleration.mean.Y"                             
 [9] "TimeDomain.GravityAcceleration.mean.Z"                             
[10] "TimeDomain.GravityAcceleration.std.X"                              
[11] "TimeDomain.GravityAcceleration.std.Y"                              
[12] "TimeDomain.GravityAcceleration.std.Z"                              
[13] "TimeDomain.BodyAccelerationJerk.mean.X"                            
[14] "TimeDomain.BodyAccelerationJerk.mean.Y"                            
[15] "TimeDomain.BodyAccelerationJerk.mean.Z"                            
[16] "TimeDomain.BodyAccelerationJerk.std.X"                             
[17] "TimeDomain.BodyAccelerationJerk.std.Y"                             
[18] "TimeDomain.BodyAccelerationJerk.std.Z"                             
[19] "TimeDomain.BodyAngularSpeed.mean.X"                                
[20] "TimeDomain.BodyAngularSpeed.mean.Y"                                
[21] "TimeDomain.BodyAngularSpeed.mean.Z"                                
[22] "TimeDomain.BodyAngularSpeed.std.X"                                 
[23] "TimeDomain.BodyAngularSpeed.std.Y"                                 
[24] "TimeDomain.BodyAngularSpeed.std.Z"                                 
[25] "TimeDomain.BodyAngularAcceleration.mean.X"                         
[26] "TimeDomain.BodyAngularAcceleration.mean.Y"                         
[27] "TimeDomain.BodyAngularAcceleration.mean.Z"                         
[28] "TimeDomain.BodyAngularAcceleration.std.X"                          
[29] "TimeDomain.BodyAngularAcceleration.std.Y"                          
[30] "TimeDomain.BodyAngularAcceleration.std.Z"                          
[31] "TimeDomain.BodyAccelerationMagnitude.mean"                         
[32] "TimeDomain.BodyAccelerationMagnitude.std"                          
[33] "TimeDomain.GravityAccelerationMagnitude.mean"                      
[34] "TimeDomain.GravityAccelerationMagnitude.std"                       
[35] "TimeDomain.BodyAccelerationJerkMagnitude.mean"                     
[36] "TimeDomain.BodyAccelerationJerkMagnitude.std"                      
[37] "TimeDomain.BodyAngularSpeedMagnitude.mean"                         
[38] "TimeDomain.BodyAngularSpeedMagnitude.std"                          
[39] "TimeDomain.BodyAngularAccelerationMagnitude.mean"                  
[40] "TimeDomain.BodyAngularAccelerationMagnitude.std"                   
[41] "FrequencyDomain.BodyAcceleration.mean.X"                           
[42] "FrequencyDomain.BodyAcceleration.mean.Y"                           
[43] "FrequencyDomain.BodyAcceleration.mean.Z"                           
[44] "FrequencyDomain.BodyAcceleration.std.X"                            
[45] "FrequencyDomain.BodyAcceleration.std.Y"                            
[46] "FrequencyDomain.BodyAcceleration.std.Z"                            
[47] "FrequencyDomain.BodyAcceleration.meanFreq.X"                       
[48] "FrequencyDomain.BodyAcceleration.meanFreq.Y"                       
[49] "FrequencyDomain.BodyAcceleration.meanFreq.Z"                       
[50] "FrequencyDomain.BodyAccelerationJerk.mean.X"                       
[51] "FrequencyDomain.BodyAccelerationJerk.mean.Y"                       
[52] "FrequencyDomain.BodyAccelerationJerk.mean.Z"                       
[53] "FrequencyDomain.BodyAccelerationJerk.std.X"                        
[54] "FrequencyDomain.BodyAccelerationJerk.std.Y"                        
[55] "FrequencyDomain.BodyAccelerationJerk.std.Z"                        
[56] "FrequencyDomain.BodyAccelerationJerk.meanFreq.X"                   
[57] "FrequencyDomain.BodyAccelerationJerk.meanFreq.Y"                   
[58] "FrequencyDomain.BodyAccelerationJerk.meanFreq.Z"                   
[59] "FrequencyDomain.BodyAngularSpeed.mean.X"                           
[60] "FrequencyDomain.BodyAngularSpeed.mean.Y"                           
[61] "FrequencyDomain.BodyAngularSpeed.mean.Z"                           
[62] "FrequencyDomain.BodyAngularSpeed.std.X"                            
[63] "FrequencyDomain.BodyAngularSpeed.std.Y"                            
[64] "FrequencyDomain.BodyAngularSpeed.std.Z"                            
[65] "FrequencyDomain.BodyAngularSpeed.meanFreq.X"                       
[66] "FrequencyDomain.BodyAngularSpeed.meanFreq.Y"                       
[67] "FrequencyDomain.BodyAngularSpeed.meanFreq.Z"                       
[68] "FrequencyDomain.BodyAccelerationMagnitude.mean"                    
[69] "FrequencyDomain.BodyAccelerationMagnitude.std"                     
[70] "FrequencyDomain.BodyAccelerationMagnitude.meanFrequency"           
[71] "FrequencyDomain.BodyBodyAccelerationJerkMagnitude.mean"            
[72] "FrequencyDomain.BodyBodyAccelerationJerkMagnitude.std"             
[73] "FrequencyDomain.BodyBodyAccelerationJerkMagnitude.meanFrequency"   
[74] "FrequencyDomain.BodyBodyAngularSpeedMagnitude.mean"                
[75] "FrequencyDomain.BodyBodyAngularSpeedMagnitude.std"                 
[76] "FrequencyDomain.BodyBodyAngularSpeedMagnitude.meanFrequency"       
[77] "FrequencyDomain.BodyBodyAngularAccelerationMagnitude.mean"         
[78] "FrequencyDomain.BodyBodyAngularAccelerationMagnitude.std"          
[79] "FrequencyDomain.BodyBodyAngularAccelerationMagnitude.meanFrequency"
[80] "Subject"                                                           
[81] "Activity"