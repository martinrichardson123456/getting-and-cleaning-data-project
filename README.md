# getting-and-cleaning-data-project
This is the course project for Coursera Getting and Cleaning Data course. 

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

This project basically used data from the accelerometer and gyroscope of the Samsung Galaxy S, later cleaned and transformed for further analysis.
This repository contains the following files :
* README.md : which explains the analysis files 
* CodeBook.md : which indicates all the variables and summaries calculated, and any other relevant information
* run_analysis.R : the R script creating the data result
* tidy_data.txt : which shows the end result

## run_analysis.R Steps 
The run_analysis.R does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The tidy_data.txt was created by running the run_analysis.R script using R version 3.3.3 on Windows 10 64-bit edition.
This script uses the dplyr package.


