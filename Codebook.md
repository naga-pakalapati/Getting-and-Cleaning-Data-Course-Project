##Project Description

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

##Requirement

Create one R script called run_analysis.R that does the following.

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

###Collection of the raw data

Raw data is collected by downloading the below zip file to local R repository

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

###Information on Raw data

The dataset includes the following files apart from others which we will use for our project:

* 'README.txt': Description about how the data is collected.

* 'features_info.txt': Shows information about the variables used on the feature vector.

* 'features.txt': List of all features.

* 'activity_labels.txt': Links the class labels with their activity name.

* 'train/X_train.txt': Training set.

* 'train/y_train.txt': Training labels.

* 'test/X_test.txt': Test set.

* 'test/y_test.txt': Test labels.

##Creating the tidy datafile

* 1. Download the files from the above link, unzip them and save them in your R working repository
* 2. Prerequisite package for this project is "dplyr". Install the package if it is not already installed, and load the package.
* 3. Read the all the above files to R.
* 4. The main data sets are Training set and Test set where all the different measurements present.
* 5. The subjects were randomly partitioned to 70%-30% for generating training and test data sets, so we will merge the data sets to get a master data set contains both training and test.
* 6. subject_train and subject_test contains the data about the 30 subjects participated in the experiment, for each activity.
* 7. training_labels and test_labels contains information about the activity on which the measurements are taken on each subject.
* 8. Merge the data sets mentioned in point 5 to get master set, point 6 to get combined subject info and merge point 7 data to get combined activity info.
* 9. Column names for the sets are present in features table. Assign them to the master data set
* 10. Next step is to extract only the measurements on the mean and standard deviation for each measurement. Master data set is subsetted for this purpose.
* 11. Created 2 new columns to take values of Activity and Subject entries.
* 12. Then join master subset and activity lable data frame to get the descriptive activity names
* 13. Re-order and arrange data set to get the final data set as per the requirement in step 4.
* 14. For step 5, split the data by Activity name and Subject and then apply column mean on each data set to get the final result.
* 15. Since the out put of above step will be matrix, transposed it for better view and converted it to a data frame
* 16. View the final output of step 5 tidy data set.

###README.md file which is placed in the repo explains in details on the transformation and logic used in the run_analysis.R

##Description of the variables in the final tidy data set.

Dimensions of the dataset: 180 x 79
* 79 columns represent mean of each variable of the measurements on the mean and standard deviation for each measurement.
* 180 rows represent each activity for each subject. Each subject with 6 activities for 30 subjects.
* Data is the average of each variable for each activity and each subject.

Variables present in the dataset

Column names
[1] "tBodyAcc-mean()-X"               "tBodyAcc-mean()-Y"               "tBodyAcc-mean()-Z"              
 [4] "tBodyAcc-std()-X"                "tBodyAcc-std()-Y"                "tBodyAcc-std()-Z"               
 [7] "tGravityAcc-mean()-X"            "tGravityAcc-mean()-Y"            "tGravityAcc-mean()-Z"           
[10] "tGravityAcc-std()-X"             "tGravityAcc-std()-Y"             "tGravityAcc-std()-Z"            
[13] "tBodyAccJerk-mean()-X"           "tBodyAccJerk-mean()-Y"           "tBodyAccJerk-mean()-Z"          
[16] "tBodyAccJerk-std()-X"            "tBodyAccJerk-std()-Y"            "tBodyAccJerk-std()-Z"           
[19] "tBodyGyro-mean()-X"              "tBodyGyro-mean()-Y"              "tBodyGyro-mean()-Z"             
[22] "tBodyGyro-std()-X"               "tBodyGyro-std()-Y"               "tBodyGyro-std()-Z"              
[25] "tBodyGyroJerk-mean()-X"          "tBodyGyroJerk-mean()-Y"          "tBodyGyroJerk-mean()-Z"         
[28] "tBodyGyroJerk-std()-X"           "tBodyGyroJerk-std()-Y"           "tBodyGyroJerk-std()-Z"          
[31] "tBodyAccMag-mean()"              "tBodyAccMag-std()"               "tGravityAccMag-mean()"          
[34] "tGravityAccMag-std()"            "tBodyAccJerkMag-mean()"          "tBodyAccJerkMag-std()"          
[37] "tBodyGyroMag-mean()"             "tBodyGyroMag-std()"              "tBodyGyroJerkMag-mean()"        
[40] "tBodyGyroJerkMag-std()"          "fBodyAcc-mean()-X"               "fBodyAcc-mean()-Y"              
[43] "fBodyAcc-mean()-Z"               "fBodyAcc-std()-X"                "fBodyAcc-std()-Y"               
[46] "fBodyAcc-std()-Z"                "fBodyAcc-meanFreq()-X"           "fBodyAcc-meanFreq()-Y"          
[49] "fBodyAcc-meanFreq()-Z"           "fBodyAccJerk-mean()-X"           "fBodyAccJerk-mean()-Y"          
[52] "fBodyAccJerk-mean()-Z"           "fBodyAccJerk-std()-X"            "fBodyAccJerk-std()-Y"           
[55] "fBodyAccJerk-std()-Z"            "fBodyAccJerk-meanFreq()-X"       "fBodyAccJerk-meanFreq()-Y"      
[58] "fBodyAccJerk-meanFreq()-Z"       "fBodyGyro-mean()-X"              "fBodyGyro-mean()-Y"             
[61] "fBodyGyro-mean()-Z"              "fBodyGyro-std()-X"               "fBodyGyro-std()-Y"              
[64] "fBodyGyro-std()-Z"               "fBodyGyro-meanFreq()-X"          "fBodyGyro-meanFreq()-Y"         
[67] "fBodyGyro-meanFreq()-Z"          "fBodyAccMag-mean()"              "fBodyAccMag-std()"              
[70] "fBodyAccMag-meanFreq()"          "fBodyBodyAccJerkMag-mean()"      "fBodyBodyAccJerkMag-std()"      
[73] "fBodyBodyAccJerkMag-meanFreq()"  "fBodyBodyGyroMag-mean()"         "fBodyBodyGyroMag-std()"         
[76] "fBodyBodyGyroMag-meanFreq()"     "fBodyBodyGyroJerkMag-mean()"     "fBodyBodyGyroJerkMag-std()"     
[79] "fBodyBodyGyroJerkMag-meanFreq()"

Row names
 [1] "LAYING.1"              "SITTING.1"             "STANDING.1"            "WALKING.1"             "WALKING_DOWNSTAIRS.1" 
  [6] "WALKING_UPSTAIRS.1"    "LAYING.2"              "SITTING.2"             "STANDING.2"            "WALKING.2"            
 [11] "WALKING_DOWNSTAIRS.2"  "WALKING_UPSTAIRS.2"    "LAYING.3"              "SITTING.3"             "STANDING.3"           
 [16] "WALKING.3"             "WALKING_DOWNSTAIRS.3"  "WALKING_UPSTAIRS.3"    "LAYING.4"              "SITTING.4"            
 [21] "STANDING.4"            "WALKING.4"             "WALKING_DOWNSTAIRS.4"  "WALKING_UPSTAIRS.4"    "LAYING.5"             
 [26] "SITTING.5"             "STANDING.5"            "WALKING.5"             "WALKING_DOWNSTAIRS.5"  "WALKING_UPSTAIRS.5"   
 [31] "LAYING.6"              "SITTING.6"             "STANDING.6"            "WALKING.6"             "WALKING_DOWNSTAIRS.6" 
 [36] "WALKING_UPSTAIRS.6"    "LAYING.7"              "SITTING.7"             "STANDING.7"            "WALKING.7"            
 [41] "WALKING_DOWNSTAIRS.7"  "WALKING_UPSTAIRS.7"    "LAYING.8"              "SITTING.8"             "STANDING.8"           
 [46] "WALKING.8"             "WALKING_DOWNSTAIRS.8"  "WALKING_UPSTAIRS.8"    "LAYING.9"              "SITTING.9"            
 [51] "STANDING.9"            "WALKING.9"             "WALKING_DOWNSTAIRS.9"  "WALKING_UPSTAIRS.9"    "LAYING.10"            
 [56] "SITTING.10"            "STANDING.10"           "WALKING.10"            "WALKING_DOWNSTAIRS.10" "WALKING_UPSTAIRS.10"  
 [61] "LAYING.11"             "SITTING.11"            "STANDING.11"           "WALKING.11"            "WALKING_DOWNSTAIRS.11"
 [66] "WALKING_UPSTAIRS.11"   "LAYING.12"             "SITTING.12"            "STANDING.12"           "WALKING.12"           
 [71] "WALKING_DOWNSTAIRS.12" "WALKING_UPSTAIRS.12"   "LAYING.13"             "SITTING.13"            "STANDING.13"          
 [76] "WALKING.13"            "WALKING_DOWNSTAIRS.13" "WALKING_UPSTAIRS.13"   "LAYING.14"             "SITTING.14"           
 [81] "STANDING.14"           "WALKING.14"            "WALKING_DOWNSTAIRS.14" "WALKING_UPSTAIRS.14"   "LAYING.15"            
 [86] "SITTING.15"            "STANDING.15"           "WALKING.15"            "WALKING_DOWNSTAIRS.15" "WALKING_UPSTAIRS.15"  
 [91] "LAYING.16"             "SITTING.16"            "STANDING.16"           "WALKING.16"            "WALKING_DOWNSTAIRS.16"
 [96] "WALKING_UPSTAIRS.16"   "LAYING.17"             "SITTING.17"            "STANDING.17"           "WALKING.17"           
[101] "WALKING_DOWNSTAIRS.17" "WALKING_UPSTAIRS.17"   "LAYING.18"             "SITTING.18"            "STANDING.18"          
[106] "WALKING.18"            "WALKING_DOWNSTAIRS.18" "WALKING_UPSTAIRS.18"   "LAYING.19"             "SITTING.19"           
[111] "STANDING.19"           "WALKING.19"            "WALKING_DOWNSTAIRS.19" "WALKING_UPSTAIRS.19"   "LAYING.20"            
[116] "SITTING.20"            "STANDING.20"           "WALKING.20"            "WALKING_DOWNSTAIRS.20" "WALKING_UPSTAIRS.20"  
[121] "LAYING.21"             "SITTING.21"            "STANDING.21"           "WALKING.21"            "WALKING_DOWNSTAIRS.21"
[126] "WALKING_UPSTAIRS.21"   "LAYING.22"             "SITTING.22"            "STANDING.22"           "WALKING.22"           
[131] "WALKING_DOWNSTAIRS.22" "WALKING_UPSTAIRS.22"   "LAYING.23"             "SITTING.23"            "STANDING.23"          
[136] "WALKING.23"            "WALKING_DOWNSTAIRS.23" "WALKING_UPSTAIRS.23"   "LAYING.24"             "SITTING.24"           
[141] "STANDING.24"           "WALKING.24"            "WALKING_DOWNSTAIRS.24" "WALKING_UPSTAIRS.24"   "LAYING.25"            
[146] "SITTING.25"            "STANDING.25"           "WALKING.25"            "WALKING_DOWNSTAIRS.25" "WALKING_UPSTAIRS.25"  
[151] "LAYING.26"             "SITTING.26"            "STANDING.26"           "WALKING.26"            "WALKING_DOWNSTAIRS.26"
[156] "WALKING_UPSTAIRS.26"   "LAYING.27"             "SITTING.27"            "STANDING.27"           "WALKING.27"           
[161] "WALKING_DOWNSTAIRS.27" "WALKING_UPSTAIRS.27"   "LAYING.28"             "SITTING.28"            "STANDING.28"          
[166] "WALKING.28"            "WALKING_DOWNSTAIRS.28" "WALKING_UPSTAIRS.28"   "LAYING.29"             "SITTING.29"           
[171] "STANDING.29"           "WALKING.29"            "WALKING_DOWNSTAIRS.29" "WALKING_UPSTAIRS.29"   "LAYING.30"            
[176] "SITTING.30"            "STANDING.30"           "WALKING.30"            "WALKING_DOWNSTAIRS.30" "WALKING_UPSTAIRS.30" 


####Notes on Observations: Row 1 is LAYING.1 stand for LAYING activity measurement average on subject 1, followed by remaining 5 different activities on subject 1. This makes first 6 rows. And rest follows this sequence.