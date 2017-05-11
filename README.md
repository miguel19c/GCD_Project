# GCD_Project
Final project of getting and cleaning data course

The solution of the final project is in run_analysis.R, a short description of the functions and variables used in the run_analysis.R  are in CodeBook.md. The first part of the project is download the data in the **project folder** in the working directory. Then, I need unziped the data set with unzip R function. After that, all data sets are in **UCI HAR Dataset**. Later, I read the dataset with the function read.table and store the information in the train, train.label, train.subject, test, test.label, test.subject, feature and activity variables.
The second part is merge the train and test set in one data set that I called **data**. I select the columns of **data** with only mean and deviation standar with help of grep function and I saved the result in **data.md**.
The third part is create a second, independent tidy data set of **data.md** with the average of each variable for each activity and each subject that I saved in the **data.avg** data set . Later, I label the data set with descriptive variable names of activities.
Ultimately, I export the **data.md** and **data.avg** in a table with help of write.table R function.
