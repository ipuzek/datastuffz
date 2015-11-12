# Getting and Cleaning Data - COURSE ASSIGNMENT #

Everything related to the course assignment is in the folder named Project. The script which reads in and transforms the data is named 'run_analysis.R', and there are no other scripts to run.

Apart from the base package, the script needs dplyr and data.table packages.

## Script mechanics are documented in the script itself, there are plenty of comments. Here is the overview ##

1. reading in (importing) all the dataframe components (data, labels, etc)
2. labelling the data set with descriptive variable names
3. descriptive activity names to name the activities in the data set
4. extracting only the measurements on the mean and standard deviation for each measurement
5. from the data set in step 4, I create a second, independent tidy data set with the average of each variable for each activity and each subject.
