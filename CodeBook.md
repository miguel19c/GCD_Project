**Code Book**

The code book that describes the variables, the data, and any transformations or work that you performed to clean up the data.


**R functions**

 ***download.file()*** function for download the url file.

 ***unzip()*** function for unzip the files in the zip.
 
 ***read.table*** function for read the txt file.


***merge()*** function for merge data sets

***grep()*** function for search regular expressions in a string vector

***ddply()*** For each subset of a data frame, apply function then combine results into a data frame.

**Variables**

 ***url***. Contain de url file of the data set. In this case 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
 
 ***features***. Contain the names of the 561 features of the study.
 
 
 ***train*** is the train set. Contain 7352 rows and 563 columns (561+activity+subject).
 
 ***train.label*** indicate the type of activity of the subject when the measure is done.
 
 ***train.subjet*** name of the subject. In this study are 30 subjects.
 
 ***test*** is the test set. Contain 2947 rows and 563 columns(561+activity+subject).
 
 ***test.label*** indicate the type of activity of the subject when the measure is done.
 
 ***test.subjet*** name of the subject .
 
 ***data*** data set that result  of merge ***test*** and ***train*** set.
 
 ***data.md*** data set that extract only the measurements on the mean and standar deviation for each measurement in ***data***
 
 ***data.avg*** is a independent tidy data set, from ***data.md***, with the average of each variable for each activity and each subject.
 
 ***activity*** contain descriptive activity names to name the activities in the ***data.md*** and ***data.avg*** set.
 
 ***data.md.txt*** is the table for export the  ***data.md*** set

***data.avg.txt*** is the table for export the  ***data.avg¨*** set.
 
