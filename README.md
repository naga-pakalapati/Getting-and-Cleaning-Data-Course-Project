## The entire script is to get and clean Human Activity Recognition Using Smartphones Dataset.
### Prequisites: dplyr package

* Load dplyr package

* Line 8-30 performs data read from several text files to R and convert the data frames to easy and readable data frames with tbl_df

* Line 34-36, combine train and test datasets, subject and labels dataframes respectively

* Assign descriptive variable names from features dataframe to data_set data frame

* Subset extracts only the variables with measurements on the mean and standard deviation for each measurement.

* Added 2 new columns Activity and Subject with values of labels and subject information respectively from respective data frames

* Joined above data frame "data_ms" and "activity_lables" and converted the data frames to easy and readable data frames with tbl_df

* Named descriptive activity names column as "Activity_name" and Re-arranged column order to move "Activity_name" and "Subject" to start and removed "Activity" column

* Final data set for step 4 with data frame ordered by "Activity_name" and "Subject"

* row_names takes column names of specified columns of data_final data frame

* activity_data is a list of 180 split data frames, splitted by "Activity_name" and "Subject"

* Mean is applied to each variable for each activity and each subject and resulting matrix is assigned to "tidy"

* Resulting matrix is transposed for better view and converted to data frame

* View the independent tidy data set with the average of each variable for each activity and each subject.