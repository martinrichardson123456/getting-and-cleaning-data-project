# CodeBook description
----
> This code book describes the end result in tidy.txt.

----
## Data
The tidy_data.txt file is a text file, and the first row lists types of activity and the names of all measurements. Each row contains a given subject, activity, and the values of corresponding 79 signal measurements.


----
## Identifiers

**subject**
> The ID of the test subject, integer, from 1 to 30

**activity**
> The type of activity done when each measurements occured

* WALKING : subject was walking
* WALKING_UPSTAIRS : subject was walking upstairs
* WALKING_DOWNSTAIRS : subject was walking downstairs
* SITTING : subject was sitting
* STANDING : subject was standing
* LAYING : subject was laying

----
## Details
1. The training and test data sets were combined into one data set.
2. The measurements can be classified into two parts: Time-domain signals(time), Frequency-domain signals(frequency)
3. All measurement values ranges from -1 to 1 due to normalisation. Before then, the unit of acceleration measurements(Acc) was 9.81 m.s?©÷and gyroscope measurements (Gyro) were written by radians per second.
4. The original f and t were replaced with time and frequency.
5. Only measurements of mean and standard deviation were survived.



----
## Measurements

* timeBodyAcc-mean()-X 
* timeBodyAcc-mean()-Y 
* timeBodyAcc-mean()-Z 
* timeBodyAcc-std()-X 
* timeBodyAcc-std()-Y 
* timeBodyAcc-std()-Z 
* timeGravityAcc-mean()-X 
* timeGravityAcc-mean()-Y 
* timeGravityAcc-mean()-Z 
* timeGravityAcc-std()-X 
* timeGravityAcc-std()-Y 
* timeGravityAcc-std()-Z 
* timeBodyAccJerk-mean()-X 
* timeBodyAccJerk-mean()-Y 
* timeBodyAccJerk-mean()-Z 
* timeBodyAccJerk-std()-X 
* timeBodyAccJerk-std()-Y 
* timeBodyAccJerk-std()-Z 
* timeBodyGyro-mean()-X 
* timeBodyGyro-mean()-Y 
* timeBodyGyro-mean()-Z 
* timeBodyGyro-std()-X 
* timeBodyGyro-std()-Y 
* timeBodyGyro-std()-Z 
* timeBodyGyroJerk-mean()-X 
* timeBodyGyroJerk-mean()-Y 
* timeBodyGyroJerk-mean()-Z 
* timeBodyGyroJerk-std()-X 
* timeBodyGyroJerk-std()-Y 
* timeBodyGyroJerk-std()-Z 
* timeBodyAccMag-mean() 
* timeBodyAccMag-std() 
* timeGravityAccMag-mean() 
* timeGravityAccMag-std() 
* timeBodyAccJerkMag-mean() 
* timeBodyAccJerkMag-std() 
* timeBodyGyroMag-mean() 
* timeBodyGyroMag-std() 
* timeBodyGyroJerkMag-mean() 
* timeBodyGyroJerkMag-std() 
* frequencyBodyAcc-mean()-X 
* frequencyBodyAcc-mean()-Y 
* frequencyBodyAcc-mean()-Z 
* frequencyBodyAcc-std()-X 
* frequencyBodyAcc-std()-Y 
* frequencyBodyAcc-std()-Z 
* frequencyBodyAcc-meanFreq()-X 
* frequencyBodyAcc-meanFreq()-Y 
* frequencyBodyAcc-meanFreq()-Z 
* frequencyBodyAccJerk-mean()-X 
* frequencyBodyAccJerk-mean()-Y 
* frequencyBodyAccJerk-mean()-Z 
* frequencyBodyAccJerk-std()-X 
* frequencyBodyAccJerk-std()-Y 
* frequencyBodyAccJerk-std()-Z 
* frequencyBodyAccJerk-meanFreq()-X 
* frequencyBodyAccJerk-meanFreq()-Y 
* frequencyBodyAccJerk-meanFreq()-Z 
* frequencyBodyGyro-mean()-X 
* frequencyBodyGyro-mean()-Y 
* frequencyBodyGyro-mean()-Z 
* frequencyBodyGyro-std()-X 
* frequencyBodyGyro-std()-Y 
* frequencyBodyGyro-std()-Z 
* frequencyBodyGyro-meanFreq()-X 
* frequencyBodyGyro-meanFreq()-Y 
* frequencyBodyGyro-meanFreq()-Z 
* frequencyBodyAccMag-mean() 
* frequencyBodyAccMag-std() 
* frequencyBodyAccMag-meanFreq() 
* frequencyBodyBodyAccJerkMag-mean() 
* frequencyBodyBodyAccJerkMag-std() 
* frequencyBodyBodyAccJerkMag-meanFreq() 
* frequencyBodyBodyGyroMag-mean() 
* frequencyBodyBodyGyroMag-std() 
* frequencyBodyBodyGyroMag-meanFreq() 
* frequencyBodyBodyGyroJerkMag-mean() 
* frequencyBodyBodyGyroJerkMag-std() 
* frequencyBodyBodyGyroJerkMag-meanFreq()


----
## Activity Labels
* WALKING (value 1)
* WALKING_UPSTAIRS (value 2) 
* WALKING_DOWNSTAIRS (value 3)
* SITTING (value 4)
* STANDING (value 5)
* LAYING (value 6)



