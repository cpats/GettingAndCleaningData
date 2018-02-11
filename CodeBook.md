#Code Book
## Getting and Cleaning Data Project

This code book describes the variables, data, and transformations or work that were performed to clean up the original data.

#Data
The original data was sourced from the Human Activity Recognition Using Smartphones Data Set [1]. The experiments recorded activities by a group of 30 volunteers. The activities noted by the experiments were WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
Recording was made through a smartphone (Samsung Galaxy S II) on the waist using the embedded accelerometer and gyroscope of the device. 
The obtained dataset which was downloaded was partitioned into two sets, training and test data, randomly divided to 70% and 30% respectively.

#Variables

#Identifiers
subject - The ID of a particular subject. Data type: integer. Range: 1 to 30.
activity - The type of activity performed by a subject derived from the measurements taken by the smartphone sensors. Range of values: 1 - 6 and labeled correspondingly -
1. WALKING: subject was walking
1. WALKING_UPSTAIRS: subject was walking upstairs
1. WALKING_DOWNSTAIRS: subject was walking downstairs
1. SITTING: subject was sitting
1. STANDING: subject was standing
1. LAYING: subject was laying

#Measurements
These are the measurements considered in the tiny_data.txt:
[1] "TimeBodyAccelerometerMean.X"                             
[2] "TimeBodyAccelerometerMean.Y"                             
[3] "TimeBodyAccelerometerMean.Z"                             
[4] "TimeBodyAccelerometerStandardDeviation.X"                
[5] "TimeBodyAccelerometerStandardDeviation.Y"                
[6] "TimeBodyAccelerometerStandardDeviation.Z"                
[7] "TimeGravityAccelerometerMean.X"                          
[8] "TimeGravityAccelerometerMean.Y"                          
[9] "TimeGravityAccelerometerMean.Z"                          
[10] "TimeGravityAccelerometerStandardDeviation.X"             
[11] "TimeGravityAccelerometerStandardDeviation.Y"             
[12] "TimeGravityAccelerometerStandardDeviation.Z"             
[13] "TimeBodyAccelerometerJerkMean.X"                         
[14] "TimeBodyAccelerometerJerkMean.Y"                         
[15] "TimeBodyAccelerometerJerkMean.Z"                         
[16] "TimeBodyAccelerometerJerkStandardDeviation.X"            
[17] "TimeBodyAccelerometerJerkStandardDeviation.Y"            
[18] "TimeBodyAccelerometerJerkStandardDeviation.Z"            
[19] "TimeBodyGyroscopeMean.X"                                 
[20] "TimeBodyGyroscopeMean.Y"                                 
[21] "TimeBodyGyroscopeMean.Z"                                 
[22] "TimeBodyGyroscopeStandardDeviation.X"                    
[23] "TimeBodyGyroscopeStandardDeviation.Y"                    
[24] "TimeBodyGyroscopeStandardDeviation.Z"                    
[25] "TimeBodyGyroscopeJerkMean.X"                             
[26] "TimeBodyGyroscopeJerkMean.Y"                             
[27] "TimeBodyGyroscopeJerkMean.Z"                             
[28] "TimeBodyGyroscopeJerkStandardDeviation.X"                
[29] "TimeBodyGyroscopeJerkStandardDeviation.Y"                
[30] "TimeBodyGyroscopeJerkStandardDeviation.Z"                
[31] "TimeBodyAccelerometerMagnitudeMean"                      
[32] "TimeBodyAccelerometerMagnitudeStandardDeviation"         
[33] "TimeGravityAccelerometerMagnitudeMean"                   
[34] "TimeGravityAccelerometerMagnitudeStandardDeviation"      
[35] "TimeBodyAccelerometerJerkMagnitudeMean"                  
[36] "TimeBodyAccelerometerJerkMagnitudeStandardDeviation"     
[37] "TimeBodyGyroscopeMagnitudeMean"                          
[38] "TimeBodyGyroscopeMagnitudeStandardDeviation"             
[39] "TimeBodyGyroscopeJerkMagnitudeMean"                      
[40] "TimeBodyGyroscopeJerkMagnitudeStandardDeviation"         
[41] "FrequencyBodyAccelerometerMean.X"                        
[42] "FrequencyBodyAccelerometerMean.Y"                        
[43] "FrequencyBodyAccelerometerMean.Z"                        
[44] "FrequencyBodyAccelerometerStandardDeviation.X"           
[45] "FrequencyBodyAccelerometerStandardDeviation.Y"           
[46] "FrequencyBodyAccelerometerStandardDeviation.Z"           
[47] "FrequencyBodyAccelerometerMeanFrequency.X"               
[48] "FrequencyBodyAccelerometerMeanFrequency.Y"               
[49] "FrequencyBodyAccelerometerMeanFrequency.Z"               
[50] "FrequencyBodyAccelerometerJerkMean.X"                    
[51] "FrequencyBodyAccelerometerJerkMean.Y"                    
[52] "FrequencyBodyAccelerometerJerkMean.Z"                    
[53] "FrequencyBodyAccelerometerJerkStandardDeviation.X"       
[54] "FrequencyBodyAccelerometerJerkStandardDeviation.Y"       
[55] "FrequencyBodyAccelerometerJerkStandardDeviation.Z"       
[56] "FrequencyBodyAccelerometerJerkMeanFrequency.X"           
[57] "FrequencyBodyAccelerometerJerkMeanFrequency.Y"           
[58] "FrequencyBodyAccelerometerJerkMeanFrequency.Z"           
[59] "FrequencyBodyGyroscopeMean.X"                            
[60] "FrequencyBodyGyroscopeMean.Y"                            
[61] "FrequencyBodyGyroscopeMean.Z"                            
[62] "FrequencyBodyGyroscopeStandardDeviation.X"               
[63] "FrequencyBodyGyroscopeStandardDeviation.Y"               
[64] "FrequencyBodyGyroscopeStandardDeviation.Z"               
[65] "FrequencyBodyGyroscopeMeanFrequency.X"                   
[66] "FrequencyBodyGyroscopeMeanFrequency.Y"                   
[67] "FrequencyBodyGyroscopeMeanFrequency.Z"                   
[68] "FrequencyBodyAccelerometerMagnitudeMean"                 
[69] "FrequencyBodyAccelerometerMagnitudeStandardDeviation"    
[70] "FrequencyBodyAccelerometerMagnitudeMeanFrequency"        
[71] "FrequencyBodyAccelerometerJerkMagnitudeMean"             
[72] "FrequencyBodyAccelerometerJerkMagnitudeStandardDeviation"
[73] "FrequencyBodyAccelerometerJerkMagnitudeMeanFrequency"    
[74] "FrequencyBodyGyroscopeMagnitudeMean"                     
[75] "FrequencyBodyGyroscopeMagnitudeStandardDeviation"        
[76] "FrequencyBodyGyroscopeMagnitudeMeanFrequency"            
[77] "FrequencyBodyGyroscopeJerkMagnitudeMean"                 
[78] "FrequencyBodyGyroscopeJerkMagnitudeStandardDeviation"    
[79] "FrequencyBodyGyroscopeJerkMagnitudeMeanFrequency"  

#Transformations
The source data of the Human Activity Recognition Using Smartphones Data Set was downloaded at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The following transformations to the source data were applied using run_Analysis.R:
1. The training and test sets were loaded from local file into R and then merged to create one dataset.
2. All measurements in the experiments were not considered except the the mean and standard deviation of the measurements. The mean and standard deviation were the values stored in the merged dataset.
3. The activity identifiers range between 1 and 6 were renamed using the factor() function in favor of descriptive labels.
4. The source variable names were renamed with descriptive strings using gsub() function.
The following code were used to make the variable name transformations:
names(finalData) <- gsub("\\()", "", names(finalData))
names(finalData) <- gsub("Freq", "Frequency", names(finalData))
names(finalData) <- gsub("^t", "Time", names(finalData))
names(finalData) <- gsub("^f", "Frequency", names(finalData))
names(finalData) <- gsub("Acc", "Accelerometer", names(finalData))
names(finalData) <- gsub("Gyro", "Gyroscope", names(finalData))
names(finalData) <- gsub("Mag", "Magnitude", names(finalData))
names(finalData) <- gsub("-mean", "Mean", names(finalData))
names(finalData) <- gsub("-std", "StandardDeviation", names(finalData))

The call to gsub("Freq", "Frequency", ...) is done before gsub("^f", "Frequency", ...) to avoid getting problematic variable name transformations containing "Frequencyuency...".
5. After the above transformations, tiny_data.txt was produced using the average (activityMeans) of each variable for each activity and each subject. The functionalities of dplyr were used as shown in the code below:
activityMeans <- finalData %>% 
  group_by(subject, activity) %>%
  summarise_all(funs(mean))


##Citation:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for
Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks,
Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.
