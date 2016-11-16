## Code Book
This is a code book that describes the variables, data and any other transformations or work that was done to clean up the data.

### THE DATA SOURCE
* Original Data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Original Description of the Data: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### DATA SET INFORMATION 
One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### THE DATA
The data set includes the following files:
* 'README.txt'

* 'features_info.txt': Shows information about the variables used on the feature vector.

* 'features.txt': List of all features.

* 'activity_labels.txt': Links the class labels with their activity name.

* 'train/X_train.txt': Training set.

* 'train/y_train.txt': Training labels.

* 'test/X_test.txt': Test set.

* 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent.

* 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

* 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.

* 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.

* 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

### TRANSFORMATION DETAILS
There are 5 parts that involved transformaion:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### IMPLEMENTATION
* Requires data.table library
* Loads the train and test data
* Loads the features and activity lables data
* Extracts the mean and standard deviation column names and data
* Processes the data - train and test
* Merges the data

## OTHER VARIABLES

* "subject"                             
* "activity"                             
* "time-BodyAcc-mean()-X"               
* "time-BodyAcc-mean()-Y"               
* "time-BodyAcc-mean()-Z"               
* "time-BodyAcc-std()-X"                
* "time-BodyAcc-std()-Y"                 
* "time-BodyAcc-std()-Z"                 
* "time-GravityAcc-mean()-X"            
* "time-GravityAcc-std()-Y"              
* "time-GravityAcc-std()-Z"              
* "time-BodyAccJerk-mean()-X"           
* "time-BodyAccJerk-mean()-Y"           
* "time-BodyAccJerk-mean()-Z"            
* "time-BodyAccJerk-std()-X"            
* "time-BodyAccJerk-std()-Y"             
* "time-BodyAccJerk-std()-Z"            
* "time-BodyGyro-mean()-X"              
* "time-BodyGyro-mean()-Y"              
* "time-BodyGyro-mean()-Z"               
* "time-BodyGyro-std()-X"               
* "time-BodyGyro-std()-Y"               
* "time-BodyGyro-std()-Z"                
* "time-BodyGyroJerk-mean()-X"          
* "time-BodyGyroJerk-mean()-Y"           
* "time-BodyGyroJerk-mean()-Z"           
* "time-BodyGyroJerk-std()-X"           
* "time-BodyGyroJerk-std()-Y"            
* "time-BodyGyroJerk-std()-Z"           
* "time-BodyAccMag-mean()"              
* "time-BodyAccMag-std()"                
* "time-GravityAccMag-mean()"            
* "time-GravityAccMag-std()"            
* "time-BodyAccJerkMag-mean()"          
* "time-BodyAccJerkMag-std()"            
* "time-BodyGyroMag-mean()"             
* "time-BodyGyroMag-std()"              
* "time-BodyGyroJerkMag-mean()"         
* "time-BodyGyroJerkMag-std()"          
* "frequency-BodyAcc-mean()-X"          
* "frequency-BodyAcc-mean()-Y"           
* "frequency-BodyAcc-mean()-Z"          
* "frequency-BodyAcc-std()-X"            
* "frequency-BodyAcc-std()-Y"            
* "frequency-BodyAcc-std()-Z"           
* "frequency-BodyAccJerk-mean()-X"      
* "frequency-BodyAccJerk-mean()-Y"      
* "frequency-BodyAccJerk-mean()-Z"      
* "frequency-BodyAccJerk-std()-X"       
* "frequency-BodyAccJerk-std()-Y"        
* "frequency-BodyAccJerk-std()-Z"       
* "frequency-BodyGyro-mean()-X"          
* "frequency-BodyGyro-mean()-Y"          
* "frequency-BodyGyro-mean()-Z"         
* "frequency-BodyGyro-std()-X"           
* "frequency-BodyGyro-std()-Y"          
* "frequency-BodyGyro-std()-Z"          
* "frequency-BodyAccMag-mean()"          
* "frequency-BodyAccMag-std()"          
* "frequency-BodyBodyAccJerkMag-mean()" 
* "frequency-BodyBodyAccJerkMag-std()"   
* "frequency-BodyBodyGyroMag-mean()"     
* "frequency-BodyBodyGyroMag-std()"     
* "frequency-BodyBodyGyroJerkMag-mean()" 
* "frequency-BodyBodyGyroJerkMag-std()" 

