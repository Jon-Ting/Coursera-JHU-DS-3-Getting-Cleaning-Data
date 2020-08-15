This is a codebook that describes the variables, the data, and any transformations or work that the author had performed to clean up the Human Activity Recognition Using Smartphones Dataset.[1]

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


For each record it is provided:
======================================
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Transformatations:
======================================
- The train and test sets were first combined into one dataset.
- The number codes in the activity data set were replaced with the actual labels of the activities recorded in activity_labels.txt.
- Each of the columns were then given a descriptive name. For features, the names were obtained from the features.txt file. The abbreviation of "t" and "f" were replaced by "TimeOf" and "FrequencyOf" respectively for better description.
- The columns with means and standard deviations of each variable were extracted next.
- The 3 datasets, namely feature, subject, and activity were then combined. The mean of each variable for each activity and each subject was calculated to give the cleaned dataset.

Variables:
======================================
"Subject" 
"Activity" 
"TimeOfBodyAcc-mean()-X" 
"TimeOfBodyAcc-mean()-Y" 
"TimeOfBodyAcc-mean()-Z" 
"TimeOfBodyAcc-std()-X" 
"TimeOfBodyAcc-std()-Y" 
"TimeOfBodyAcc-std()-Z" 
"TimeOfGravityAcc-mean()-X" 
"TimeOfGravityAcc-mean()-Y" 
"TimeOfGravityAcc-mean()-Z" 
"TimeOfGravityAcc-std()-X" 
"TimeOfGravityAcc-std()-Y" 
"TimeOfGravityAcc-std()-Z" 
"TimeOfBodyAccJerk-mean()-X" 
"TimeOfBodyAccJerk-mean()-Y" 
"TimeOfBodyAccJerk-mean()-Z" 
"TimeOfBodyAccJerk-std()-X" 
"TimeOfBodyAccJerk-std()-Y" 
"TimeOfBodyAccJerk-std()-Z" 
"TimeOfBodyGyro-mean()-X" 
"TimeOfBodyGyro-mean()-Y" 
"TimeOfBodyGyro-mean()-Z" 
"TimeOfBodyGyro-std()-X" 
"TimeOfBodyGyro-std()-Y" 
"TimeOfBodyGyro-std()-Z" 
"TimeOfBodyGyroJerk-mean()-X" 
"TimeOfBodyGyroJerk-mean()-Y" 
"TimeOfBodyGyroJerk-mean()-Z" 
"TimeOfBodyGyroJerk-std()-X" 
"TimeOfBodyGyroJerk-std()-Y" 
"TimeOfBodyGyroJerk-std()-Z" 
"TimeOfBodyAccMag-mean()" 
"TimeOfBodyAccMag-std()" 
"TimeOfGravityAccMag-mean()" 
"TimeOfGravityAccMag-std()" 
"TimeOfBodyAccJerkMag-mean()" 
"TimeOfBodyAccJerkMag-std()" 
"TimeOfBodyGyroMag-mean()" 
"TimeOfBodyGyroMag-std()" 
"TimeOfBodyGyroJerkMag-mean()" 
"TimeOfBodyGyroJerkMag-std()" 
"FrequencyOfBodyAcc-mean()-X" 
"FrequencyOfBodyAcc-mean()-Y" 
"FrequencyOfBodyAcc-mean()-Z" 
"FrequencyOfBodyAcc-std()-X" 
"FrequencyOfBodyAcc-std()-Y" 
"FrequencyOfBodyAcc-std()-Z" 
"FrequencyOfBodyAccJerk-mean()-X" 
"FrequencyOfBodyAccJerk-mean()-Y" 
"FrequencyOfBodyAccJerk-mean()-Z" 
"FrequencyOfBodyAccJerk-std()-X" 
"FrequencyOfBodyAccJerk-std()-Y" 
"FrequencyOfBodyAccJerk-std()-Z" 
"FrequencyOfBodyGyro-mean()-X" 
"FrequencyOfBodyGyro-mean()-Y" 
"FrequencyOfBodyGyro-mean()-Z" 
"FrequencyOfBodyGyro-std()-X" 
"FrequencyOfBodyGyro-std()-Y" 
"FrequencyOfBodyGyro-std()-Z" 
"FrequencyOfBodyAccMag-mean()" 
"FrequencyOfBodyAccMag-std()" 
"FrequencyOfBodyBodyAccJerkMag-mean()" 
"FrequencyOfBodyBodyAccJerkMag-std()" 
"FrequencyOfBodyBodyGyroMag-mean()" 
"FrequencyOfBodyBodyGyroMag-std()" 
"FrequencyOfBodyBodyGyroJerkMag-mean()" 
"FrequencyOfBodyBodyGyroJerkMag-std()

Data:
======================================
- Consists of the train and test sets of subject, activity, and feature.
- Only variables regarding the mean and standard deviation were collected.
- The average of each variable for each activity and each subject was recorded.

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

