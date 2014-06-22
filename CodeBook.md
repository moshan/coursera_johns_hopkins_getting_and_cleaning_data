Data Set Information:
================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.
The experiments have been video-recorded to label the data manually.
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window).
The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity.
The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used.
From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Transformations:
================================================

The major steps performed were

1. Combined the x_train.txt and x_test.txt
2. Combined the subject_train.txt and subject_test.txt
3. Combined the y_train and y_test
4. Used features.txt as the column names for the combined x dataset
5. Droped all data in combined x that did not have '-mean' or '-std' in them
6. Replaced the values in combined y by the descriptive activity names in activity.txt while also cleaning up the names by lower casing them
7. Created merged tidy data by column using column appending combined subject, y, and x datasets
8. Created a second, independent tidy data set with the average of each variable for each activity and each subject from the dataset produced in (7)


Variables:
================================================

| Variable | Description
-----------|-------------
| subject | Subject ID
| activity | Activity a person did such as WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
| tbodyacc-mean-x | the mean time for acceleration of the body in the x direction
| tbodyacc-mean-y | the mean time for acceleration of the body in the y direction
| tbodyacc-mean-z | the mean time for acceleration of the body in the x direction
| tbodyacc-std-x | the standard deviation of time for acceleration of the body in the x direction
| tbodyacc-std-y | the standard deviation of time for acceleration of the body in the y direction
| tbodyacc-std-z | the standard deviation of time for acceleration of the body in the z direction
| tgravityacc-mean-x | the mean time for acceleration of gravity in the x direction
| tgravityacc-mean-y | the mean time for acceleration of gravity in the y direction
| tgravityacc-mean-z | the mean time for acceleration of gravity in the z direction
| tgravityacc-std-x | the standard deviation of time for acceleration of gravity in the x direction
| tgravityacc-std-y | the standard deviation of time for acceleration of gravity in the y direction
| tgravityacc-std-z | the standard deviation of time for acceleration of gravity in the z direction
| tbodyaccjerk-mean-x | the mean time for body acceleration jerk in the x direction
| tbodyaccjerk-mean-y | the mean time for body acceleration jerk in the y direction
| tbodyaccjerk-mean-z | the mean time for body acceleration jerk in the z direction
| tbodyaccjerk-std-x | the standard deviation of time for body acceleration jerk in the x direction
| tbodyaccjerk-std-y | the standard deviation of time for body acceleration jerk in the y direction
| tbodyaccjerk-std-z | the standard deviation of time for body acceleration jerk in the z direction
| tbodygyro-mean-x | the mean body gyroscope measurement in the x direction
| tbodygyro-mean-y | the mean body gyroscope measurement in the y direction
| tbodygyro-mean-z | the mean body gyroscope measurement in the z direction
| tbodygyro-std-x | the standard deviation of body gyroscope measurement in the x direction
| tbodygyro-std-y | the standard deviation of body gyroscope measurement in the y direction
| tbodygyro-std-z | the standard deviation of body gyroscope measurement in the z direction
| tbodygyrojerk-mean-x | the mean body jerk gyroscope measurement in the x direction
| tbodygyrojerk-mean-y | the mean body jerk gyroscope measurement in the y direction
| tbodygyrojerk-mean-z | the mean body jerk gyroscope measurement in the z direction
| tbodygyrojerk-std-x | the standard deviation of body jerk gyroscope measurement in the x direction
| tbodygyrojerk-std-y | the standard deviation of body jerk gyroscope measurement in the y direction
| tbodygyrojerk-std-z | the standard deviation of body jerk gyroscope measurement in the z direction
| tbodyaccmag-mean | the mean magnitude of body acceleration
| tbodyaccmag-std | the standard deviation for magnitude of body acceleration
| tgravityaccmag-mean | the mean magnitude of gravity acceleration
| tgravityaccmag-std |  the standard deviation for magnitude of gravity acceleration
| tbodyaccjerkmag-mean | the mean magnitude of body acceleration jerk
| tbodyaccjerkmag-std | the standard deviation for magnitude of body acceleration jerk
| tbodygyromag-mean |
| tbodygyromag-std |
| tbodygyrojerkmag-mean |
| tbodygyrojerkmag-std |
| fbodyacc-mean-x |
| fbodyacc-mean-y |
| fbodyacc-mean-z |
| fbodyacc-std-x |
| fbodyacc-std-y |
| fbodyacc-std-z |
| fbodyaccjerk-mean-x |
| fbodyaccjerk-mean-y |
| fbodyaccjerk-mean-z |
| fbodyaccjerk-std-x |
| fbodyaccjerk-std-y |
| fbodyaccjerk-std-z |
| fbodygyro-mean-x |
| fbodygyro-mean-y |
| fbodygyro-mean-z |
| fbodygyro-std-x |
| fbodygyro-std-y |
| fbodygyro-std-z |
| fbodyaccmag-mean |
| fbodyaccmag-std |
| fbodybodyaccjerkmag-mean |
| fbodybodyaccjerkmag-std |
| fbodybodygyromag-mean |
| fbodybodygyromag-std |
| fbodybodygyrojerkmag-mean |
| fbodybodygyrojerkmag-std |



