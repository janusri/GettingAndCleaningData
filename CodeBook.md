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

6. The final list of columns in the tidy file are as follows.

SNO        ColumnName
---        ------------
 [1] "subject"                                              
 [2] "activity"                                             
 [3] "TimeBodyAccelerometerelerometerMeanX"                 
 [4] "TimeBodyAccelerometerelerometerMeanY"                 
 [5] "TimeBodyAccelerometerelerometerMeanZ"                 
 [6] "TimeBodyAccelerometerelerometerStdX"                  
 [7] "TimeBodyAccelerometerelerometerStdY"                  
 [8] "TimeBodyAccelerometerelerometerStdZ"                  
 [9] "TimeGravityAccelerometerelerometerMeanX"              
[10] "TimeGravityAccelerometerelerometerMeanY"              
[11] "TimeGravityAccelerometerelerometerMeanZ"              
[12] "TimeGravityAccelerometerelerometerStdX"               
[13] "TimeGravityAccelerometerelerometerStdY"               
[14] "TimeGravityAccelerometerelerometerStdZ"               
[15] "TimeBodyAccelerometerelerometerJerkMeanX"             
[16] "TimeBodyAccelerometerelerometerJerkMeanY"             
[17] "TimeBodyAccelerometerelerometerJerkMeanZ"             
[18] "TimeBodyAccelerometerelerometerJerkStdX"              
[19] "TimeBodyAccelerometerelerometerJerkStdY"              
[20] "TimeBodyAccelerometerelerometerJerkStdZ"              
[21] "TimeBodyGyroscopeMeanX"                               
[22] "TimeBodyGyroscopeMeanY"                               
[23] "TimeBodyGyroscopeMeanZ"                               
[24] "TimeBodyGyroscopeStdX"                                
[25] "TimeBodyGyroscopeStdY"                                
[26] "TimeBodyGyroscopeStdZ"                                
[27] "TimeBodyGyroscopeJerkMeanX"                           
[28] "TimeBodyGyroscopeJerkMeanY"                           
[29] "TimeBodyGyroscopeJerkMeanZ"                           
[30] "TimeBodyGyroscopeJerkStdX"                            
[31] "TimeBodyGyroscopeJerkStdY"                            
[32] "TimeBodyGyroscopeJerkStdZ"                            
[33] "TimeBodyAccelerometerelerometerMagnitudeMean"         
[34] "TimeBodyAccelerometerelerometerMagnitudeStd"          
[35] "TimeGravityAccelerometerelerometerMagnitudeMean"      
[36] "TimeGravityAccelerometerelerometerMagnitudeStd"       
[37] "TimeBodyAccelerometerelerometerJerkMagnitudeMean"     
[38] "TimeBodyAccelerometerelerometerJerkMagnitudeStd"      
[39] "TimeBodyGyroscopeMagnitudeMean"                       
[40] "TimeBodyGyroscopeMagnitudeStd"                        
[41] "TimeBodyGyroscopeJerkMagnitudeMean"                   
[42] "TimeBodyGyroscopeJerkMagnitudeStd"                    
[43] "FrequencyBodyAccelerometerelerometerMeanX"            
[44] "FrequencyBodyAccelerometerelerometerMeanY"            
[45] "FrequencyBodyAccelerometerelerometerMeanZ"            
[46] "FrequencyBodyAccelerometerelerometerStdX"             
[47] "FrequencyBodyAccelerometerelerometerStdY"             
[48] "FrequencyBodyAccelerometerelerometerStdZ"             
[49] "FrequencyBodyAccelerometerelerometerJerkMeanX"        
[50] "FrequencyBodyAccelerometerelerometerJerkMeanY"        
[51] "FrequencyBodyAccelerometerelerometerJerkMeanZ"        
[52] "FrequencyBodyAccelerometerelerometerJerkStdX"         
[53] "FrequencyBodyAccelerometerelerometerJerkStdY"         
[54] "FrequencyBodyAccelerometerelerometerJerkStdZ"         
[55] "FrequencyBodyGyroscopeMeanX"                          
[56] "FrequencyBodyGyroscopeMeanY"                          
[57] "FrequencyBodyGyroscopeMeanZ"                          
[58] "FrequencyBodyGyroscopeStdX"                           
[59] "FrequencyBodyGyroscopeStdY"                           
[60] "FrequencyBodyGyroscopeStdZ"                           
[61] "FrequencyBodyAccelerometerelerometerMagnitudeMean"    
[62] "FrequencyBodyAccelerometerelerometerMagnitudeStd"     
[63] "FrequencyBodyAccelerometerelerometerJerkMagnitudeMean"
[64] "FrequencyBodyAccelerometerelerometerJerkMagnitudeStd" 
[65] "FrequencyBodyGyroscopeMagnitudeMean"                  
[66] "FrequencyBodyGyroscopeMagnitudeStd"                   
[67] "FrequencyBodyGyroscopeJerkMagnitudeMean"              
[68] "FrequencyBodyGyroscopeJerkMagnitudeStd"    
