# The entire script is to get and clean Human Activity Recognition Using Smartphones Dataset.
# Prequisites: dplyr package

# Load dplyr package
suppressWarnings(suppressMessages(library(dplyr)))

# Line 8-22 performs data read from several text files to R
activity_labels <- read.table("S:/All about Data Science/Coursera/R/R working directory/UCI HAR Dataset/activity_labels.txt")

features <- read.table("S:/All about Data Science/Coursera/R/R working directory/UCI HAR Dataset/features.txt")

subject_test <- read.table("S:/All about Data Science/Coursera/R/R working directory/UCI HAR Dataset/test/subject_test.txt")

test_set <- read.table("S:/All about Data Science/Coursera/R/R working directory/UCI HAR Dataset/test/X_test.txt")

test_labels <- read.table("S:/All about Data Science/Coursera/R/R working directory/UCI HAR Dataset/test/y_test.txt")

subject_train <- read.table("S:/All about Data Science/Coursera/R/R working directory/UCI HAR Dataset/train/subject_train.txt")

training_set <- read.table("S:/All about Data Science/Coursera/R/R working directory/UCI HAR Dataset/train/X_train.txt")

training_labels <- read.table("S:/All about Data Science/Coursera/R/R working directory/UCI HAR Dataset/train/y_train.txt")

# Line 25-27, combine train and test datasets, subject and labels dataframes respectively
data_set <- rbind(training_set, test_set)
data_subject <- rbind(subject_train, subject_test)
data_labels <- rbind(training_labels, test_labels)

# Assign descriptive variable names to data_set data frame
colnames(data_set) <- features$V2

# Subset extracts only the variables with measurements on the mean and standard deviation
# for each measurement.
data_ms <- data_set[ , grep("mean()|std()", colnames(data_set))]

# Added 2 new columns Activity and Subject with values of labels and subject information 
# respectively from respective data frames
data_ms <- mutate(data_ms, Activity = data_labels$V1, Subject = data_subject$V1)

# Joined above data frame "data_ms" and "activity_lables"
data_merge <- merge(data_ms, activity_labels, by.x = "Activity", by.y = "V1")

# Named descriptive activity names column as "Activity_name"
# Re-arranged column order to move "Activity_name" and "Subject" to start and removed "Activity" column
data_merge <- select(data_merge, Activity_name = V2, Subject, everything(), -Activity)

# Final data set for step 4 with data frame ordered by "Activity_name" and "Subject"
data_final <- arrange(data_merge, Activity_name, Subject)

# activity_data is a list of 180 split data frames, splitted by "Activity_name" and "Subject"
activity_data <- split(data_final, list(data_final$Activity_name, data_final$Subject))

# Mean is applied to each variable for each activity and each subject and 
# resulting matrix is assigned to "tidy"
tidy <- sapply(activity_data, function(x) colMeans(x[ , c(3:81)]))

# Resulting matrix is transposed for better view and converted to data frame
tidy <- as.data.frame(t(tidy))

# View the independent tidy data set with the average of each variable 
# for each activity and each subject.
View(tidy)

# Write table to a text file
write.table(tidy, file = "tidy.txt")