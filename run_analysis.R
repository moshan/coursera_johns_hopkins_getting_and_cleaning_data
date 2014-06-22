#You should create one R script called run_analysis.R that does the following.
#Overview:
#Merges the training and the test sets to create one data set.
#Extracts only the measurements on the mean and standard deviation for each measurement.
#Uses descriptive activity names to name the activities in the data set
#Appropriately labels the data set with descriptive variable names.
#Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#Assumes script to be run in working directory where the the dataset is downloaded and unzipped
#in a folder named 'UCI HAR Dataset'

# Data Directories
data_base_directory <- "./UCI HAR Dataset/"
data_train_directory <- paste(data_base_directory, "train/", sep="")
data_test_directory <- paste(data_base_directory, "test/", sep="")

# Merges the training and the test sets to create one data set.
x_train <- read.table(paste(data_train_directory, "X_train.txt", sep = ""))
x_test <- read.table(paste(data_test_directory, "X_test.txt", sep = ""))
x_merged <- rbind(x_train, x_test)

subject_train <- read.table(paste(data_train_directory, "subject_train.txt", sep=""))
subject_test <- read.table(paste(data_test_directory,"subject_test.txt",sep=""))
subject_merged <- rbind(subject_train, subject_test)

y_train <- read.table(paste(data_train_directory, "y_train.txt", sep = ""))
y_test <- read.table(paste(data_test_directory, "y_test.txt", sep = ""))
y_merged <- rbind(y_train, y_test)

# Extracts only the measurements on the mean and standard deviation for each measurement.
features <- read.table(paste(data_base_directory,"features.txt", sep=""))
mean_and_stddev <- grep("-mean\\(\\)|-std\\(\\)", features[, 2]) #take those features which contains '-mean' or '-std'
x_merged_mean_and_stddev <- x_merged[, mean_and_stddev] #only take the columns that correspond to mean and stddev, leave others out

# Uses descriptive activity names to name the activities in the data set
names(x_merged_mean_and_stddev) <- features[mean_and_stddev, 2] #at this point the names are of the form "V1","V2","V3"... so replace with the names from features
names(x_merged_mean_and_stddev) <- gsub("\\(|\\)", "", tolower(names(x_merged_mean_and_stddev)))#take the un-friendly names and convert to lower and remove '(' and ')' characters

activities <- read.table(paste(data_base_directory, "activity_labels.txt", sep=""))
activities[, 2] <- tolower(activities[, 2]) #make to lowercase

y_merged[, 1] = activities[y_merged[, 1], 2] #set categorical id to corresponding string value
colnames(y_merged) <- 'activity' #name single column table column name to 'activity'
colnames(subject_merged) <- 'subject' #name single column table column name to 'subject'

# Appropriately labels the data set with descriptive activity names.
merged_tidy_data <- cbind(subject_merged, y_merged, x_merged_mean_and_stddev)
#str(merged_tidy_data) #compactly print the df
write.table(merged_tidy_data, "./merged_tidy_data.txt")

# Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
average_data <- aggregate(x=merged_tidy_data, by=list(activities=merged_tidy_data$activity, subj=merged_tidy_data$subject), FUN=mean)
#str(average_data) #compactly print the df
write.table(average_data, './average_of_merged_tidy_data.txt')
