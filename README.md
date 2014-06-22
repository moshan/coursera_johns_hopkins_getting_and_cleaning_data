Coursera Johns Hopkins: Getting and Cleaning Data
================================================

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.
The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project.
You will be required to submit:

1. a tidy data set as described below,
2. a link to a Github repository with your script for performing the analysis, and
3. a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md.
4. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.


One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.
Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Set Up
================================================

1. Chose a directory or create a new one which is to be the working directory for R
2. Clone this repo to that directory
3. Download and unzip the following https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, it should unzip into a folder named 'UCI HAR Dataset'
4. Run the run_analysis.R script

run_analysis.R - How it Works
================================================

The major steps performed in the script are as follows:

1. Combines the x_train.txt and x_test.txt using rbind into x_merged dataframe
2. Combines the subject_train.txt and subject_test.txt using rbind into subject_merged dataframe
3. Combines the y_train and y_test data  using rbind into y_merged dataframe
4. Loads the features.txt and returns rows indexes for entries containing '-mean()' or '-std()' in them and subsets x_merged into x_merged_mean_and_stddev dataframe
5. Replaces the values in y_merged by the descriptive activity names in activity.txt while also cleaning up the names by lower casing them
6. Creates merged_tidy_data dataframe by column using cbind(subject_merged, y_merged, x_merged_mean_and_stddev) and writes it to the working directory as merged_tidy_data.txt
7. Creates a second independent tidy data set with the average of each variable for each activity and each subject and writes it ot the working directory as average_of_merged_tidy_data.txts



