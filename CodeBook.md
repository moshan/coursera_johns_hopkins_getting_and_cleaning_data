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

Transformation:
================================================

1. The categorical feature 'activity' was replaced to its descriptive string form instead of the numeric value by looking it up in the activity_labels.txt.
2. The columns names were assigned by taking them from the features.txt and transforming them to a more cleaner by lower cain

The test and train data which was split up was also combined back together by appending the *_test.txt and *_train.txt files together.

The major steps performed in the script are as follows:

1. Combined the x_train.txt and x_test.txt
2. Combined the subject_train.txt and subject_test.txt
3. CombineD the y_train and y_test
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
| activity |
| tbodyacc-mean-x |
| tbodyacc-mean-y |
| tbodyacc-mean-z |
| tbodyacc-std-x |
| tbodyacc-std-y |
| tbodyacc-std-z |
| tgravityacc-mean-x |
| tgravityacc-mean-y |
| tgravityacc-mean-z |
| tgravityacc-std-x |
| tgravityacc-std-y |
| tgravityacc-std-z |
| tbodyaccjerk-mean-x |
| tbodyaccjerk-mean-y |
| tbodyaccjerk-mean-z |
| tbodyaccjerk-std-x |
| tbodyaccjerk-std-y |
| tbodyaccjerk-std-z |
| tbodygyro-mean-x |
| tbodygyro-mean-y |
| tbodygyro-mean-z |
| tbodygyro-std-x |
| tbodygyro-std-y |
| tbodygyro-std-z |
| tbodygyrojerk-mean-x |
| tbodygyrojerk-mean-y |
| tbodygyrojerk-mean-z |
| tbodygyrojerk-std-x |
| tbodygyrojerk-std-y |
| tbodygyrojerk-std-z |
| tbodyaccmag-mean |
| tbodyaccmag-std |
| tgravityaccmag-mean |
| tgravityaccmag-std |
| tbodyaccjerkmag-mean |
| tbodyaccjerkmag-std |
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



3. a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md.

