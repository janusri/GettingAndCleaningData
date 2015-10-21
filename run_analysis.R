# Load the datasets into R for the data manipulation

 trainData <- read.table("./UCI_HAR_Dataset/train/X_train.txt",header=FALSE)
 trainData_act <- read.table("./UCI_HAR_Dataset/train/y_train.txt",header=FALSE)
 trainData_sub <- read.table("./UCI_HAR_Dataset/train/subject_train.txt",header=FALSE)
 testData_Set <- read.table("./UCI_HAR_Dataset/test/X_test.txt",header=FALSE)
 testData_Label <- read.table("./UCI_HAR_Dataset/test/y_test.txt",header=FALSE)
 testData_sub <- read.table("./UCI_HAR_Dataset/test/subject_test.txt",header=FALSE)
 trainData_Set <- read.table("./UCI_HAR_Dataset/train/X_train.txt",header=FALSE)
 trainData_label <- read.table("./UCI_HAR_Dataset/train/y_train.txt",header=FALSE)
 trainData_sub <- read.table("./UCI_HAR_Dataset/train/subject_train.txt",header=FALSE)
 activities <- read.table("./UCI_HAR_Dataset/activity_labels.txt",header=FALSE,colClasses="character")


#1. Merge the Training and test data sets to create one data set.
# Joins both the traindata and testdata sets
joinData <- rbind(trainData_Set,testData_Set)
# join both labels
joinLabel <- rbind(trainData_label,testData_label)
# Join both the subjects
joinSub <- rbind(trainData_sub,testData_sub)

#2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# Read Features table
 features <- read.table("./UCI_HAR_Dataset/features.txt")
# Extract the columns that have either mean or Std in their column names
meanStdIndices <- grep("mean\\(\\)|std\\(\\)", features[, 2])
# The dataset joinData will have only these columns.
joinData <- joinData[, meanStdIndices]

# remove '-' in column names 
names(joinData) <- gsub("-", "", names(joinData)) 

#3. Uses descriptive activity names to name the activities in the data set

 # Load the file
 activity <- read.table("./UCI_HAR_Dataset/activity_labels.txt",header=FALSE)
 #Remove the underscores in the text to make it look clean
 activity[, 2] <- tolower(gsub("_", "", activity[, 2]))
 # Change the walkingupstairs to walkingUpstairs
 substr(activity[2, 2], 8, 8) <- toupper(substr(activity[2, 2], 8, 8))
 # Change the walkingdownstairs to walkingDownstairs
 substr(activity[3, 2], 8, 8) <- toupper(substr(activity[3, 2], 8, 8))
 # Update the joinLabel dataset with these names
 activityLabel <- activity[joinLabel[, 1], 2]
 
 # Step4. Appropriately labels the data set with descriptive activity 
 # Get the dataset with the Subject columns
 names(joinSub) <- "subject"
 # Merge the datasets to form the final dataset
 cleanedData <- cbind(joinsub,joinLabel,joinData)
 # Merge the datasets to form the final dataset
 cleanedData <- cbind(joinSub,joinLabel,joinData)
  # Make the column names more meaningful by using descriptive names
names(cleanedData)<-gsub("Acc", "Accelerometer", names(cleanedData))
names(cleanedData)<-gsub("Gyro", "Gyroscope", names(cleanedData))
names(cleanedData)<-gsub("BodyBody", "Body", names(cleanedData))
names(cleanedData)<-gsub("Mag", "Magnitude", names(cleanedData))
names(cleanedData)<-gsub("^t", "Time", names(cleanedData))
names(cleanedData)<-gsub("^f", "Frequency", names(cleanedData))
names(cleanedData)<-gsub("tBody", "TimeBody", names(cleanedData))
names(cleanedData)<-gsub("-mean()", "Mean", names(cleanedData), ignore.case = TRUE)
names(cleanedData)<-gsub("-std()", "STD", names(cleanedData), ignore.case = TRUE)
names(cleanedData)<-gsub("-freq()", "Frequency", names(cleanedData), ignore.case = TRUE)
names(cleanedData)<-gsub("angle", "Angle", names(cleanedData))
names(cleanedData)<-gsub("gravity", "Gravity", names(cleanedData))
 # Write the cleaned data to a file
write.table(cleanedData, "merged_data.txt") 
 # Step5. Appropriately labels the data set with descriptive activity
  # set the columns Activity and Subject as factor variables
 cleanedData$activity =as.factor(cleanedData$activity)
 cleanedData$subject =as.factor(cleanedData$subject) 
 # create the tidy dataset by excluding the subject and activity in the mean calculation
 tidyData <- aggregate(. ~subject + activity, cleanedData, mean)
 # Order the tidyData output by subject and activity
 tidyData <- tidyData[order(tidyData$subject,tidyData$activity),]
