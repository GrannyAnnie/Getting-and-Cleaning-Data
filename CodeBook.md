---
title: "CodeBook.md"
output: html_document
---


This code book describes the variables, the data, and any transformations or work performed to clean up the data.

Data source and description from original study documentation

Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


Study Description

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Subject Variables

Study performed measurements on 30 individuals, each assigned a SubjectID

Activity variables

Each individual performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.  Each activity name was assigned an ActivityID (numbered 1-6)

Measurements

Using the Samsung Galaxy S II's embedded accelerometer and gyroscope, they study recorded 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.  These measurements were assigned featureID numbers and corresponding feature_labels as follows:

*tBodyAccMeanX

*tBodyAccMeanY

*tBodyAccMeanZ

*tBodyAccStdX

*tBodyAccStdY

*tBodyAccStdZ

*tGravityAccMeanX

*tGravityAccMeanY

*tGravityAccMeanZ

*tGravityAccStdX

*tGravityAccStdY

*tGravityAccStdZ

*tBodyAccJerkMeanX

*tBodyAccJerkMeanY

*tBodyAccJerkMeanZ

*tBodyAccJerkStdX

*tBodyAccJerkStdY

*tBodyAccJerkStdZ

*tBodyGyroMeanX

*tBodyGyroMeanY

*tBodyGyroMeanZ

*tBodyGyroStdX

*tBodyGyroStdY

*tBodyGyroStdZ

*tBodyGyroJerkMeanX

*tBodyGyroJerkMeanY

*tBodyGyroJerkMeanZ

*tBodyGyroJerkStdX

*tBodyGyroJerkStdY

*tBodyGyroJerkStdZ

*tBodyAccMagMean

*tBodyAccMagStd

*tGravityAccMagMean

*tGravityAccMagStd

*tBodyAccJerkMagMean

*tBodyAccJerkMagStd

*tBodyGyroMagMean

*tBodyGyroMagStd

*tBodyGyroJerkMagMean

*tBodyGyroJerkMagStd

*fBodyAccMeanX

*fBodyAccMeanY

*fBodyAccMeanZ

*fBodyAccStdX

*fBodyAccStdY

*fBodyAccStdZ

*fBodyAccMeanFreqX

*fBodyAccMeanFreqY

*fBodyAccMeanFreqZ

*fBodyAccJerkMeanX

*fBodyAccJerkMeanY

*fBodyAccJerkMeanZ

*fBodyAccJerkStdX

*fBodyAccJerkStdY

*fBodyAccJerkStdZ

*fBodyAccJerkMeanFreqX

*fBodyAccJerkMeanFreqY

*fBodyAccJerkMeanFreqZ

*fBodyGyroMeanX

*fBodyGyroMeanY

*fBodyGyroMeanZ

*fBodyGyroStdX

*fBodyGyroStdY

*fBodyGyroStdZ

*fBodyGyroMeanFreqX

*fBodyGyroMeanFreqY

*fBodyGyroMeanFreqZ

*fBodyAccMagMean

*fBodyAccMagStd

*fBodyAccMagMeanFreq

*fBodyBodyAccJerkMagMean

*fBodyBodyAccJerkMagStd

*fBodyBodyAccJerkMagMeanFreq

*fBodyBodyGyroMagMean

*fBodyBodyGyroMagStd

*fBodyBodyGyroMagMeanFreq

*fBodyBodyGyroJerkMagMean

*fBodyBodyGyroJerkMagStd

*fBodyBodyGyroJerkMagMeanFreq


