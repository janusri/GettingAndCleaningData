1. Download the Zip file from the URL - https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
2. Unzip the files and renam the source directory to UCI_HAR_Dataset to exclude the spaces in the folder.
3. Load the data sets testData_Set,testData_label , testData_sub ,trainData_Set ,trainData_label ,trainData_sub
4. Removed _ from the column names.
5. The following are the synonyms that has been used to tidy up the column names

old               New
---              ------
"Acc"           "Accelerometer"
"Gyro"          "Gyroscope"
"BodyBody"      "Body"
"Mag"           "Magnitude" 
"^t"            "Time" 
"^f"            "Frequency" 
"tBody"         "TimeBody" 
"-mean()"       "Mean"
"-std()"        "STD"
"-freq()"       "Frequency"
"angle"         "Angle" 
"gravity"       "Gravity"
