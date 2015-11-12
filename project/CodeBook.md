# Codebook for course project

The codebook is short, as the data is still rather cryptic to me. However, I tried to provide the basic outline.

### subject
#### type = numeric
values from 1 to 30, as there were 30 respondents (subjects)

### activity
#### type = factor
1. walking
2. walking_upstairs
3. walking_downstairs
4. sitting
5. standing
6. laying

### various body movements, means summarized by means (one mean per each subject-activity pair)
#### type = numeric
tBodyAcc_mean_X tBodyAcc_mean_Y tBodyAcc_mean_Z tGravityAcc_mean_X tGravityAcc_mean_Y tGravityAcc_mean_Z  tBodyAccJerk_mean_X tBodyAccJerk_mean_Y tBodyAccJerk_mean_Z  tBodyGyro_mean_X tBodyGyro_mean_Y tBodyGyro_mean_Z  tBodyGyroJerk_mean_X tBodyGyroJerk_mean_Y tBodyGyroJerk_mean_Z tBodyAccMag_mean tGravityAccMag_mean tBodyAccJerkMag_mean tBodyGyroMag_mean tBodyGyroJerkMag_mean 
fBodyAcc_mean_X fBodyAcc_mean_Y fBodyAcc_mean_Z fBodyAccJerk_mean_X fBodyAccJerk_mean_Y fBodyAccJerk_mean_Z fBodyGyro_mean_X fBodyGyro_mean_Y fBodyGyro_mean_Z fBodyAccMag_mean fBodyBodyAccJerkMag_mean fBodyBodyGyroMag_mean fBodyBodyGyroJerkMag_mean

### various body movements, standard deviations summarized by means (one mean per each subject-activity pair)
#### type = numeric
tBodyAcc_std_X tBodyAcc_std_Y tBodyAcc_std_Z tGravityAcc_std_X tGravityAcc_std_Y tGravityAcc_std_Z tBodyAccJerk_std_X tBodyAccJerk_std_Y tBodyAccJerk_std_Z  tBodyGyro_std_X tBodyGyro_std_Y tBodyGyro_std_Z  tBodyGyroJerk_std_X tBodyGyroJerk_std_Y tBodyGyroJerk_std_Z  tBodyAccMag_std tGravityAccMag_std  tBodyAccJerkMag_std tBodyGyroMag_std tBodyGyroJerkMag_std
fBodyAcc_std_X fBodyAcc_std_Y fBodyAcc_std_Z  fBodyAccJerk_std_X fBodyAccJerk_std_Y fBodyAccJerk_std_Z
fBodyGyro_std_X fBodyGyro_std_Y fBodyGyro_std_Z fBodyAccMag_std fBodyBodyAccJerkMag_std fBodyBodyGyroMag_std fBodyBodyGyroJerkMag_std
