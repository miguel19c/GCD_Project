#Code for the projec.

#Installing library
install.packages('plyr')
library(plyr)

#Downloading the dataset in a project folder in zip format.

if(!file.exists('./project')){dir.create('./project')}
url='https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
download.file(url,destfile='./project/dataset.zip',method='curl')


#unzip the dataset in the project folder.

unzip ("./project/dataset.zip", exdir = "./project")


#Loading the dataset. Remember that the training, testing, labels, activities and features data are in the 
# UCI HAR Dataset folder inside the project folder.

features=read.table('./project/UCI HAR Dataset/features.txt')

#TRAIN
train=read.table('./project/UCI HAR Dataset/train/X_train.txt',col.names = features[,2])
train.label=read.table('./project/UCI HAR Dataset/train/y_train.txt')
train.subject=read.table('./project/UCI HAR Dataset/train/subject_train.txt')

#Adding activity and subject to train set.
train$activity=train.label[,1]
train$subject=train.subject[,1]

#TEST
test=read.table('./project/UCI HAR Dataset/test/X_test.txt',col.names=features[,2])
test.label=read.table('./project/UCI HAR Dataset/test/y_test.txt')
test.subject=read.table('./project/UCI HAR Dataset/test/subject_test.txt')

#Adding activity and subject to test set 
test$activity=test.label[,1]
test$subject=test.subject[,1]



#Merging the training and testing sets to create one data set.

data=merge(test,train,all=TRUE,sort=FALSE)


#Extracting only the measurements on the mean and standar deviation for each measurement

data.md=data[,grep("activity|subject|\\.mean\\.|\\.std\\.", colnames(data))]


#Creating a second, independent tidy data set with the average 
#of each variable for each activity and each subject.
data.avg=ddply(data.md,.(activity,subject),colMeans)

#Using descriptive activity names to name the activities in the data set
activity=read.table('./project/UCI HAR Dataset/activity_labels.txt')

#Appropriately labels the data set with descriptive variable names.
data.md$activity=factor(data.md$activity, levels=activity[,1],labels=activity[,2])
data.avg$activity=factor(data.avg$activity, levels=activity[,1],labels=activity[,2])

#Exporting  results.

write.table(data.md,file='./project/data.md.txt',row.name = FALSE)
write.table(data.avg,file='./project/data.avg.txt',row.name=FALSE)
