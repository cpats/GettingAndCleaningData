# Getting And Cleaning Data Project
This work is in compliance to the assignment for the Getting and Cleaning Data course in Coursera.

Based on the course project instruction:
"The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis."

This repository has the following files:
1. run_analysis.R - the R script which contains the codes to execute the tasks required in the course project
2. tidy_data.txt - the output file resulting from the cleaning of the data
3. CodeBook.md - this code book describes the contents of the data set
4. README.md - gives an overview of the project and codes used to manipulate the data set to come up with the required outputs.

run_analysis.R is expected to perform the following actions:
1. Download the dataset found in https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. The download happens if the zip file is not currently existing in the working directory.
2. Merge the training and test datasets found in the zip file. Merging is done by reading and loading the two datasets using read.table function. The mean of the measurements and standard deviation values were the only ones retained in the subsequent processing.
3. Load the activity, feature information, and subject data for each dataset. The columns in the above dataset are then merged with these information to provide activity and variable names. The function gsub was called to transform variable names into more descriptive labels.
4. Get the average value of each variable for each activity and each subject.  
5. Create an independent tidy dataset consisting the average value of each variable for each subject and activity pair using chained dplyr functionalities such as group_by, summarise_all, and funs.
