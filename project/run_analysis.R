### COURSE PROJECT ###

# You will be required to submit: 
  # 1) a tidy data set as described below, 
  # 2) a link to a Github repository with your script for performing the analysis, and 
  # 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 
  # 4) README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  


#Merges the training and the test sets to create one data set.
#Extracts only the measurements on the mean and standard deviation for each measurement. 
#Uses descriptive activity names to name the activities in the data set
#Appropriately labels the data set with descriptive variable names. 

### From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


# Please upload the tidy data set created in step 5 of the instructions. 
# Please upload your data set as a txt file created with write.table() using row.name=FALSE (do not cut and paste a dataset directly into the text box, as this may cause errors saving your submission).

library(dplyr)
library(data.table)

setwd("~/R/datastuffz/project/Dataset/")

### reading in (importing) all the dataframe components (data, labels, etc)

#main body of data
Xtest <- fread("test/X_test.txt")
Xtrain <- fread("train/X_train.txt")

#subjects
subject.test <- fread("test/subject_test.txt")
subject.train <- fread("train/subject_train.txt")

#activities
activities.test <- fread("test/y_test.txt")
activities.train <- fread("train/y_train.txt")

#features aka variable names
features.test <- fread("features.txt")
#activity labels - for descriptive factor labels
activity.labels <- fread("activity_labels.txt")

# table(subject.test) ## checking to understand structure

test.dat <- cbind(activities.test, subject.test, Xtest)
train.dat <- cbind(activities.train, subject.train, Xtrain)

#label the data set with descriptive variable names. 

colnames(test.dat)[1:2] <- c("activity", "subject")
colnames(train.dat)[1:2] <- c("activity", "subject")

colnames(test.dat)[3:563] <- features.test$V2
colnames(train.dat)[3:563] <- features.test$V2

# tail(colnames(test.dat)) ## check OK

dat <- rbind(test.dat, train.dat)

#descriptive activity names to name the activities in the data set
activity.labels <- tolower(activity.labels$V2)
dat$activity <- factor(dat$activity, labels = activity.labels)

#Extracts only the measurements on the mean and standard deviation for each measurement
dat.mean <- select(dat, contains("mean()"))
dat.sd <- select(dat, contains("std()"))
dat.basic <- select(dat, activity, subject)

dat.mean.sd <- cbind(dat.basic, dat.mean, dat.sd)

### From the data set in step 4, creates a second, independent tidy data set... 
### with the average of each variable for each activity and each subject.

dat.mean.sd <- as.data.frame(dat.mean.sd)

#fix variable names
namesTOfix <- colnames(dat.mean.sd)
names.fixed <- gsub("-","_",namesTOfix, fixed=TRUE)
names.fixed <- gsub("()","",names.fixed, fixed=TRUE)
colnames(dat.mean.sd) <- names.fixed

#group dataframe
dat.grouped <- group_by(dat.mean.sd, subject, activity)

#this works for few vars - useful for checking the final result
#meanz_test <- summarise(dat_grouped, mean(tBodyAcc_mean_X))

#this works for ALL vars
mean.summary.final <- summarise_each(dat_grouped, funs(mean))
